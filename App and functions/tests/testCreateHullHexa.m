function tests = testCreateHullHexa
    tests = functiontests(localfunctions);
end

function testAsymmetricHexagon(testCase)
    % Test the "2" symmetry case (asymmetric hexagon)
    
    % Create the app instance using the helper
    app = setupTestApp();
    testCase.addTeardown(@() close(app.UIFigure));
    
    % Set the switch value for asymmetric hexagon case
    app.SymmetryhexagonSwitch.Value = '2';
    
    % Create test points for a simple asymmetric hexagon
    points = [0,2;   % top vertex
              1,1;   % top-right vertex
              1,-1;  % bottom-right vertex
              0,-2;  % bottom vertex
              -1,-1; % bottom-left vertex
              -1,1]; % top-left vertex
    
    % Call the function
    hull = app.createHullHexa(points);
    
    % Calculate expected results based on these specific points
    expectedA = 2; % Average of vertical edges
    expectedB = 2; % Average of horizontal edges
    expectedC = 1; % Average of distances of top/bottom vertices from rectangle
    
    % Verify results with tolerance for floating-point calculations
    testCase.verifyEqual(hull(1), expectedA, 'AbsTol', 1e-10, 'Incorrect value for parameter a');
    testCase.verifyEqual(hull(2), expectedB, 'AbsTol', 1e-10, 'Incorrect value for parameter b');
    testCase.verifyEqual(hull(3), expectedC, 'AbsTol', 1e-10, 'Incorrect value for parameter c');
end

function testSymmetricHexagon(testCase)
    % Test the "6" symmetry case (regular hexagon)
    
    % Create the app instance using the helper
    app = setupTestApp();
    testCase.addTeardown(@() close(app.UIFigure));
    
    % Set the switch value for symmetric hexagon case
    app.SymmetryhexagonSwitch.Value = '6';
    
    % Create test points for a regular hexagon with radius 2
    r = 2; % radius
    angles = linspace(0, 2*pi - 2*pi/6, 6);
    x = r * cos(angles);
    y = r * sin(angles);
    points = [x', y'];
    
    % Call the function
    hull = app.createHullHexa(points);
    
    % For a regular hexagon with radius 2:
    expectedA = 2; % distance from center to vertex
    expectedB = 2 * sqrt(3); % width (should be sqrt(3) * a)
    expectedC = 1; % should be a/2
    
    % Verify results with tolerance
    testCase.verifyEqual(hull(1), expectedA, 'AbsTol', 1e-10, 'Incorrect value for parameter a');
    testCase.verifyEqual(hull(2), expectedB, 'AbsTol', 1e-10, 'Incorrect value for parameter b');
    testCase.verifyEqual(hull(3), expectedC, 'AbsTol', 1e-10, 'Incorrect value for parameter c');
end