function tests = testOverlapCleaning
    tests = functiontests(localfunctions);
end

function testNoOverlap(testCase)
    % Test the "2" symmetry case (rectangle)
    
    % Create the app instance using the helper
    app = setupTestApp();
    testCase.addTeardown(@() close(app.UIFigure));

    % Set variables
    app.minRadOver=1.4;
    circTemp=[0,0;1.4,0;0,1.6];
    radTemp=[1,1,1];
    metTemp=[3,2,1];
    
    % Call the function
    [cent,rad,met]=overlapCleaning(app,circTemp,radTemp,metTemp);
    
    % Calculate expected results based on these specific points
    expectedLen = 3; % All kept
    
    % Verify results with tolerance for floating-point calculations
    testCase.verifyEqual(size(cent,1), expectedLen, 'AbsTol', 1e-10, 'Not all particles were kept');
end

function testOnekept(testCase)
    % Test the "2" symmetry case (rectangle)
    
    % Create the app instance using the helper
    app = setupTestApp();
    testCase.addTeardown(@() close(app.UIFigure));

    % Set variables
    app.minRadOver=1.4;
    circTemp=[0,0;1.4,0;0,1.6];
    radTemp=[2,1,1];
    metTemp=[3,2,1];
    
    % Call the function
    [cent,rad,met]=overlapCleaning(app,circTemp,radTemp,metTemp);
    
    % Calculate expected results based on these specific points
    expectedLen = 1; % All kept
    
    % Verify results with tolerance for floating-point calculations
    testCase.verifyEqual(size(cent,1), expectedLen, 'AbsTol', 1e-10, 'Not only one was kept');
end

function testTwokept(testCase)
    % Test the "2" symmetry case (rectangle)
    
    % Create the app instance using the helper
    app = setupTestApp();
    testCase.addTeardown(@() close(app.UIFigure));

    % Set variables
    app.minRadOver=1.4;
    circTemp=[0,0;1.4,0;0,1.6];
    radTemp=[1,2,1];
    metTemp=[3,2,1];
    
    % Call the function
    [cent,rad,met]=overlapCleaning(app,circTemp,radTemp,metTemp);
    
    % Calculate expected results based on these specific points
    expectedLen = 2; % All kept
    
    % Verify results with tolerance for floating-point calculations
    testCase.verifyEqual(size(cent,1), expectedLen, 'AbsTol', 1e-10, 'Not only two were kept');
end
