function tests = testCreateHullRect
    tests = functiontests(localfunctions);
end

function testAsymmetricRect(testCase)
    % Test the "2" symmetry case (rectangle)
    
    % Create the app instance using the helper
    app = setupTestApp();
    testCase.addTeardown(@() close(app.UIFigure));
    
    % Set the switch value for rectangular case
    app.SymmetryrectangleSwitch.Value = '2';
    
    % Create test points for a simple asymmetric hexagon
    points = [0,0;   % bottom-left vertex
              0,1;   % top-left vertex
              2,1;  % top-right vertex
              2,0];  % bottom-right vertex
    
    % Call the function
    hull = app.createHullRect(points);
    
    % Calculate expected results based on these specific points
    expectedA = 2; % Average of long edges
    expectedB = 1; % Average of sort edges
    
    % Verify results with tolerance for floating-point calculations
    testCase.verifyEqual(hull(1), expectedA, 'AbsTol', 1e-10, 'Incorrect value for parameter a');
    testCase.verifyEqual(hull(2), expectedB, 'AbsTol', 1e-10, 'Incorrect value for parameter b');
end

function testSymmetricHexagon(testCase)
    % Test the "4" symmetry case (regular square)
    
    % Create the app instance using the helper
    app = setupTestApp();
    testCase.addTeardown(@() close(app.UIFigure));
    
    % Set the switch value for square case
    app.SymmetryrectangleSwitch.Value = '4';
    
    % Create test points for a simple asymmetric hexagon
    points = [0,0;   % bottom-left vertex
              0,1;   % top-left vertex
              2,1;  % top-right vertex
              2,0];  % bottom-right vertex
    
    % Call the function
    hull = app.createHullRect(points);
    
    % For a regular hexagon with radius 2:
    expectedA = 1.5; 
    expectedB = 1.5; 
    
    % Verify results with tolerance
    testCase.verifyEqual(hull(1), expectedA, 'AbsTol', 1e-10, 'Incorrect value for parameter a');
    testCase.verifyEqual(hull(2), expectedB, 'AbsTol', 1e-10, 'Incorrect value for parameter b');
end