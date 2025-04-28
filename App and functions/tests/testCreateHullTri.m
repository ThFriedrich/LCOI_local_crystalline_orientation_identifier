function tests = testCreateHullTri
    tests = functiontests(localfunctions);
end

function testTri(testCase)
    % Test the creation of triangular hull
    
    % Create the app instance using the helper
    app = setupTestApp();
    testCase.addTeardown(@() close(app.UIFigure));
    
    
    % Create test points 
    points = [0,0;   % bottom-left vertex
              0.5,sqrt(3)/2;   % top vertex
              1,0];  % bottom-right vertex
    
    % Call the function
    hull = app.createHullTri(points);
    
    % Calculate expected results based on these specific points
    expectedA = 1; % Average of long edges
    
    % Verify results with tolerance for floating-point calculations
    testCase.verifyEqual(hull(1), expectedA, 'AbsTol', 1e-10, 'Incorrect value for parameter a');
end