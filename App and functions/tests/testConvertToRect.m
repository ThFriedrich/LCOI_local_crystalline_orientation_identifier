function tests = testConvertToRect
    tests = functiontests(localfunctions);
end

function testBasicConversion(testCase)
    % Test basic conversion without rotation
    
    % Create the app instance using the helper
    app = setupTestApp();
    testCase.addTeardown(@() close(app.UIFigure));
    
    % Define test inputs
    hu = [2, 1]; % Hull parameters [a, b]
    cent = [3, 2];  % Center at (3, 2)
    rot = 0;        % No rotation
    
    % Call the function directly
    coorRect = app.convertToRect(hu, cent, rot);
    
    % Expected result
    expectedRect = [2,2.5;4,2.5;4,1.5;2,1.5];
    
    % Verify results with tolerance for floating-point calculations
    testCase.verifyEqual(coorRect, expectedRect, 'AbsTol', 1e-10, 'Hexagon coordinates incorrect');
end

function testRotatedRectangle(testCase)
    % Test conversion with rotation
    
    % Create the app instance using the helper
    app = setupTestApp();
    testCase.addTeardown(@() close(app.UIFigure));
    
    % Define test inputs
    hu = [4,2];     % Large hexagon
    cent = [-3, 5];     % Different center
    rot = pi/2;   % Rotation
    
    % Call the function directly
    coorRect = app.convertToRect(hu, cent, rot);
    
    % Expected result
    expectedRect = [-4,3;-4,7;-2,7;-2,3];
    
    % Verify results with tolerance for floating-point calculations
    testCase.verifyEqual(coorRect, expectedRect, 'AbsTol', 1e-10, 'Rotated hexagon coordinates incorrect');
end