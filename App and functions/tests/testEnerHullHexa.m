function tests = testEnerHullHexa
    tests = functiontests(localfunctions);
end

function testPerfectFit(testCase)
    % Test energy for perfect fit
    
    % Create the app instance using the helper
    app = setupTestApp();
    testCase.addTeardown(@() close(app.UIFigure));
    
    % Define test inputs
    hu = [2, 4, 1]; % Hull parameters [a, b, c]
    coor = [3, 2, 0];  % Center at (3, 2) and 0 rotation
    cent = [1,2;2,4;4,4;5,2;4,0;2,0]; % Locations of particles
    cutoff = 0.25;
    
    % Call the function directly
    e = enerHullHexa(app,coor,cutoff,cent,hu);

    % Expected energy
    expectedEnergy=-6*cutoff^2;
    
    % Verify results with tolerance for floating-point calculations
    testCase.verifyEqual(e, expectedEnergy, 'AbsTol', 1e-10, 'Hexagon coordinates incorrect');
end

function testStretchedBond(testCase)
    % Test energy for one stretched bond
    
    % Create the app instance using the helper
    app = setupTestApp();
    testCase.addTeardown(@() close(app.UIFigure));
    
    % Define test inputs
    hu = [2, 4, 1]; % Hull parameters [a, b, c]
    coor = [3, 2, 0];  % Center at (3, 2) and 0 rotation
    cent = [1-0.1,2;2,4;4,4;5,2;4,0;2,0]; % Locations of particles
    cutoff = 0.25;
    
    % Call the function directly
    e = enerHullHexa(app,coor,cutoff,cent,hu);

    % Expected energy
    expectedEnergy=-6*cutoff^2+0.01;
    
    % Verify results with tolerance for floating-point calculations
    testCase.verifyEqual(e, expectedEnergy, 'AbsTol', 1e-10, 'Hexagon coordinates incorrect');
end

function testBrokenBond(testCase)
    % Test energy for one broken bond
    
    % Create the app instance using the helper
    app = setupTestApp();
    testCase.addTeardown(@() close(app.UIFigure));
    
    % Define test inputs
    hu = [2, 4, 1]; % Hull parameters [a, b, c]
    coor = [3, 2, 0];  % Center at (3, 2) and 0 rotation
    cent = [1-0.3,2;2,4;4,4;5,2;4,0;2,0]; % Locations of particles
    cutoff = 0.25;
    
    % Call the function directly
    e = enerHullHexa(app,coor,cutoff,cent,hu);

    % Expected energy
    expectedEnergy=-5*cutoff^2;
    
    % Verify results with tolerance for floating-point calculations
    testCase.verifyEqual(e, expectedEnergy, 'AbsTol', 1e-10, 'Hexagon coordinates incorrect');
end