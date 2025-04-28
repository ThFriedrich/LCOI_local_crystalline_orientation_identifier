function tests = testConvertToHexa
    tests = functiontests(localfunctions);
end

function testBasicConversion(testCase)
    % Test basic conversion without rotation
    
    % Create the app instance using the helper
    app = setupTestApp();
    testCase.addTeardown(@() close(app.UIFigure));
    
    % Define test inputs
    hu = [2, 4, 1]; % Hull parameters [a, b, c]
    cent = [3, 2];  % Center at (3, 2)
    rot = 0;        % No rotation
    
    % Call the function directly
    coorHexa = app.convertToHexa(hu, cent, rot);
    
    % Expected result
    expectedHexa = [1,2;2,4;4,4;5,2;4,0;2,0];
    
    % Verify results with tolerance for floating-point calculations
    testCase.verifyEqual(coorHexa, expectedHexa, 'AbsTol', 1e-10, 'Hexagon coordinates incorrect');
end

function testRotatedHexagon(testCase)
    % Test conversion with rotation
    
    % Create the app instance using the helper
    app = setupTestApp();
    testCase.addTeardown(@() close(app.UIFigure));
    
    % Define test inputs
    hu = [10, 8, 2];     % Large hexagon
    cent = [-5, 10];     % Different center
    rot = pi/4;   % Random rotation
    
    % Call the function directly
    coorHexa = app.convertToHexa(hu, cent, rot);
    
    % Expected result
    expectedHexa = [-9.94974746830583	5.05025253169417;-11.3639610306789	9.29289321881345;-4.29289321881345	16.3639610306789;-0.0502525316941673	14.9497474683058;1.36396103067893	10.7071067811865;-5.70710678118655	3.63603896932107];
    
    % Verify results with tolerance for floating-point calculations
    testCase.verifyEqual(coorHexa, expectedHexa, 'AbsTol', 1e-10, 'Rotated hexagon coordinates incorrect');
end