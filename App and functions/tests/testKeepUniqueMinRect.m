function tests = testKeepUniqueMinRect
    tests = functiontests(localfunctions);
end

function testEmptyMasks(testCase)
    % Test with no masks
    
    % Create the app instance
    app = setupTestApp();
    testCase.addTeardown(@() close(app.UIFigure));
    
    % Set up test conditions - empty masks array
    app.coorOfMasksRect = [];
    app.hullRect = [2, 1]; % Some arbitrary hull parameters
    
    % Call the function
    indReturn = app.keepUniqueMinRect();
    
    % Verify results - should return empty array
    testCase.verifyEqual(size(indReturn, 2), 0, 'Should return empty array for no masks');
end

function testSingleMask(testCase)
    % Test with a single mask
    
    % Create the app instance
    app = setupTestApp();
    testCase.addTeardown(@() close(app.UIFigure));
    
    % Set up test conditions - one mask
    app.coorOfMasksRect = [10, 5, 0]; % Single mask 
    app.hullRect = [2, 1];
    
    % Call the function
    indReturn = app.keepUniqueMinRect();
    
    % Verify results - should return zeros for single mask
    testCase.verifyEqual(indReturn, ones(1, size(app.coorOfMasksRect, 1)));
end

function testDistantMasks(testCase)
    % Test with masks that are far apart (all should be kept)
    
    % Create the app instance
    app = setupTestApp();
    testCase.addTeardown(@() close(app.UIFigure));
    
    % Set up test conditions - masks far apart
    app.hullRect = [2, 1]; 
    cutoff = app.hullRect(2) * 0.5; % 1/2
    
    % Create masks with distances > cutoff
    % Already in order of best energy first
    app.coorOfMasksRect = [
        0, 0, 0;      % Best mask overall at (0,0)
        0, 4, 0;      % Distance  > cutoff
        5, 0, 0;      % Distance > cutoff
    ];
    
    % Call the function
    indReturn = app.keepUniqueMinRect();
    
    % Each mask should be kept since they're all far apart
    expectedIndReturn = ones(1, 3)';
    
    % Verify results
    testCase.verifyEqual(indReturn, expectedIndReturn, 'All distant masks should be kept');
end

function testClusteredMasks(testCase)
    % Test two clusters of masks where one is within cutoff 
    % First (best) mask in each cluster should be kept
    
    % Create the app instance
    app = setupTestApp();
    testCase.addTeardown(@() close(app.UIFigure));
    
    % Set up test conditions
    app.hullRect = [2, 1]; 
    cutoff = app.hullRect(2) * 0.5; % 1/2
    
    % Create masks already in order of best energy first
    app.coorOfMasksRect = [
        0, 0, 0;      % Best mask overall at (0,0)
        0, 0.25, 0;      % Mask at (0, 0.25) - distance = 0.25 < cutoff from (0,0)
        5, 0, 0;      % Best mask of second cluster at (5,0) 
        5, 0.25, 0;  % Mask at (5,0.25) - distance = 0.25 < cutoff from (5,0)
    ];
    
    % Call the function
    indReturn = app.keepUniqueMinRect();
    
    % Expected result: Only the first mask in each cluster should be kept
    expectedIndReturn = [1, 0, 1, 0]';
    
    % Verify results
    testCase.verifyEqual(indReturn, expectedIndReturn, 'Only first mask in each cluster should be kept');
end

function testComplexClusteredMasks(testCase)
    % Test with clusters of masks where one is within cutoff distance and
    % the third is far enough from 1 but closer than cutoff to 2 that is
    % not kept
    % First (best) mask in each cluster should be kept
    
    % Create the app instance
    app = setupTestApp();
    testCase.addTeardown(@() close(app.UIFigure));
    
    % Set up test conditions
    app.hullRect = [2, 1]; % Hull with width (b) = 4
    cutoff = app.hullRect(2) * 0.5; % 1/2
    
    % Create masks already in order of best energy first
    app.coorOfMasksRect = [
        0, 0, 0;      % Best mask overall at (0,0)
        0.4 ,0, 0;      % Distance = 0.4 < cutoff from (0,0)
        0.4, 0.4, 0;    % Far enough from 1 but not from 2 (which is not kept) 
    ];
    
    % Call the function
    indReturn = app.keepUniqueMinRect();
    
    % Expected result: Only the first mask in each cluster should be kept
    expectedIndReturn = [1, 0, 1]';
    
    % Verify results
    testCase.verifyEqual(indReturn, expectedIndReturn, 'Only first mask in each cluster should be kept');
end