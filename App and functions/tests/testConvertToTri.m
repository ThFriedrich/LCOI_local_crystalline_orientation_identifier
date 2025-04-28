function tests = testConvertToTri
    tests = functiontests(localfunctions);
end

function testBasicConversion(testCase)
    % Test basic conversion without rotation
    
    % Create the app instance using the helper
    app = setupTestApp();
    testCase.addTeardown(@() close(app.UIFigure));
    
    % Define test inputs
    hu = [1]; % Hull parameters [a]
    cent = [3, 2];  % Center at (3, 2)
    rot = 0;        % No rotation
    
    % Call the function directly
    coorTri = app.convertToTri(hu, cent, rot);
    
    % Expected result
    expectedTri = [3,2+1/sqrt(3);3.5,2-1/(2*sqrt(3));2.5,2-1/(2*sqrt(3))];
    
    % Verify results with tolerance for floating-point calculations
    testCase.verifyEqual(coorTri, expectedTri, 'AbsTol', 1e-10, 'Hexagon coordinates incorrect');
end

function testRotatedRectangle(testCase)
    % Test conversion with rotation
    
    % Create the app instance using the helper
    app = setupTestApp();
    testCase.addTeardown(@() close(app.UIFigure));
    
    % Define test inputs
    hu = [1];     % Large hexagon
    cent = [-1, 5];     % Different center
    rot = pi/3;   % Random rotation
    
    % Call the function directly
    coorTri = app.convertToTri(hu, cent, rot);
    
    % Expected result
    expectedTri = [-1.5,5+1/(2*sqrt(3));-0.5,5+1/(2*sqrt(3));-1,5-1/(sqrt(3))];
    
    % Verify results with tolerance for floating-point calculations
    testCase.verifyEqual(coorTri, expectedTri, 'AbsTol', 1e-10, 'Rotated hexagon coordinates incorrect');
end