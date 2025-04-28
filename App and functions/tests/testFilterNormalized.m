function tests = testFilterNormalized
    tests = functiontests(localfunctions);
end

function setup(testCase)
    % Create test app and add teardown
    testCase.TestData = struct(); % Initialize TestData structure
    testCase.TestData.app = setupTestApp();
    testCase.addTeardown(@() close(testCase.TestData.app.UIFigure));
    
    % Create standard test image - Gaussian peak at center
    imgSize = 51;
    testCase.TestData.imgSize = imgSize;
    [X, Y] = meshgrid(1:imgSize, 1:imgSize);
    cx = 26; cy = 26; sigma = 3;
    testCase.TestData.center = [cx, cy];
    testCase.TestData.im = 255 * exp(-((X - cx).^2 + (Y - cy).^2) / (2 * sigma^2));
    
    % Create filters of different sizes
    testCase.TestData.filtSize5 = fspecial('disk', 5);
    testCase.TestData.filtSize7 = fspecial('disk', 7);
    testCase.TestData.filtSize3 = fspecial('disk', 3);
end

function testHigherScoreAtCenter(testCase)
    % Verify that score is higher when filter is centered on peak
    app = testCase.TestData.app;
    im = testCase.TestData.im;
    cx = testCase.TestData.center(1)+0.5;
    cy = testCase.TestData.center(2)+0.5;
    filt = testCase.TestData.filtSize5;
    
    % Score at exact center
    sCenter = -app.filterNormalized([cx, cy], im, filt, 5, 0, 0, 0);
    
    % Score with offset center - test several positions with increasing distance
    sOff1 = -app.filterNormalized([cx + 1, cy + 1], im, filt, 5, 0, 0, 0);
    sOff2 = -app.filterNormalized([cx + 2, cy + 2], im, filt, 5, 0, 0, 0);
    sOff3 = -app.filterNormalized([cx + 3, cy + 3], im, filt, 5, 0, 0, 0);
    
    % Verify that scores decrease as filter moves away from peak
    testCase.verifyGreaterThan(sCenter, sOff1, 'Score should be highest when filter is exactly centered');
    testCase.verifyGreaterThan(sOff1, sOff2, 'Score should decrease with distance from peak');
    testCase.verifyGreaterThan(sOff2, sOff3, 'Score should continue to decrease with distance from peak');
end

function testFactStdParameter(testCase)
    % Test influence of factStd parameter
    app = testCase.TestData.app;
    im = testCase.TestData.im;
    center = testCase.TestData.center;
    filt = testCase.TestData.filtSize5;
    
    % Test factStd influence - higher factStd should reduce score
    % as we're dividing by std2(im)^factStd
    s_factStd0 = -app.filterNormalized(center, im, filt, 5, 0, 0, 0);
    s_factStd1 = -app.filterNormalized(center, im, filt, 5, 1, 0, 0);
    s_factStd2 = -app.filterNormalized(center, im, filt, 5, 2, 0, 0);
    
    % If std > 1, increasing factStd should decrease score
    lff = 2;
    std_val = std2(im(center(2)-lff:center(2)+lff, center(1)-lff:center(1)+lff));
    if std_val > 1
        testCase.verifyGreaterThan(s_factStd0, s_factStd1, 'Score should decrease as factStd increases from 0 to 1');
        testCase.verifyGreaterThan(s_factStd1, s_factStd2, 'Score should decrease as factStd increases from 1 to 2');
    else
        testCase.verifyLessThan(s_factStd0, s_factStd1, 'For std < 1, score should increase as factStd increases');
        testCase.verifyLessThan(s_factStd1, s_factStd2, 'For std < 1, score should increase as factStd increases');
    end
end

function testFact1Parameter(testCase)
    % Test influence of fact1 parameter
    app = testCase.TestData.app;
    im = testCase.TestData.im;
    center = testCase.TestData.center;
    filt = testCase.TestData.filtSize5;
    
    % Get min value in the region
    lff = 2;
    min_val = min(min(im(center(2)-lff:center(2)+lff, center(1)-lff:center(1)+lff)));
    
    % Test fact1 influence - higher fact1 increases the contribution of min value
    s_fact1_0 = -app.filterNormalized(center, im, filt, 5, 0, 0, 0);
    s_fact1_1 = -app.filterNormalized(center, im, filt, 5, 0, 1, 0);
    s_fact1_2 = -app.filterNormalized(center, im, filt, 5, 0, 2, 0);
    
    % Multiplying by min_val^fact1
    if min_val > 1
        testCase.verifyGreaterThan(s_fact1_2, s_fact1_1, 'For min > 1, score should increase with fact1');
        testCase.verifyGreaterThan(s_fact1_1, s_fact1_0, 'For min > 1, score should increase with fact1');
    elseif min_val < 1 && min_val > 0
        testCase.verifyLessThan(s_fact1_2, s_fact1_1, 'For 0 < min < 1, score should decrease with fact1');
        testCase.verifyLessThan(s_fact1_1, s_fact1_0, 'For 0 < min < 1, score should decrease with fact1');
    end
end

function testFact2Parameter(testCase)
    % Test influence of fact2 parameter
    app = testCase.TestData.app;
    im = testCase.TestData.im;
    center = testCase.TestData.center;
    filt = testCase.TestData.filtSize5;
    
    % Get max value in the region
    lff = 2;
    max_val = max(max(im(center(2)-lff:center(2)+lff, center(1)-lff:center(1)+lff)));
    
    % Test fact2 influence - higher fact2 increases division by max value
    s_fact2_0 = -app.filterNormalized(center, im, filt, 5, 0, 0, 0);
    s_fact2_1 = -app.filterNormalized(center, im, filt, 5, 0, 0, 1);
    s_fact2_2 = -app.filterNormalized(center, im, filt, 5, 0, 0, 2);
    
    % Dividing by max_val^fact2
    if max_val > 1
        testCase.verifyLessThan(s_fact2_2, s_fact2_1, 'For max > 1, score should decrease with fact2');
        testCase.verifyLessThan(s_fact2_1, s_fact2_0, 'For max > 1, score should decrease with fact2');
    elseif max_val < 1 && max_val > 0
        testCase.verifyGreaterThan(s_fact2_2, s_fact2_1, 'For 0 < max < 1, score should increase with fact2');
        testCase.verifyGreaterThan(s_fact2_1, s_fact2_0, 'For 0 < max < 1, score should increase with fact2');
    end
end
