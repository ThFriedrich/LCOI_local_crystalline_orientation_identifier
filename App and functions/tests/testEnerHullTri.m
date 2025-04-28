function tests = testEnerHullTri
    tests = functiontests(localfunctions);
end

function testPerfectFit(testCase)
    % Test energy for perfect fit
    
    % Create the app instance using the helper
    app = setupTestApp();
    testCase.addTeardown(@() close(app.UIFigure));
    
    % Define test inputs
    hu = [1]; % Hull parameters [a]
    coor = [0.5, 1/(2*sqrt(3)), 0];  % Center at (1, 0.5) and 0 rotation
    cent = [0,0;0.5,sqrt(3)/2;1,0]; % Locations of particles
    cutoff = 0.4;
    
    % Call the function directly
    e = enerHullTri(app,coor,cutoff,cent,hu);

    % Expected energy
    expectedEnergy=-3*cutoff^2;
    
    % Verify results with tolerance for floating-point calculations
    testCase.verifyEqual(e, expectedEnergy, 'AbsTol', 1e-10, 'Hexagon coordinates incorrect');
end

function testStretchedBond(testCase)
    % Test energy for one stretched bond
    
    % Create the app instance using the helper
    app = setupTestApp();
    testCase.addTeardown(@() close(app.UIFigure));
    
    % Define test inputs
    hu = [1]; % Hull parameters [a]
    coor = [0.5, 1/(2*sqrt(3)), 0];  % Center at (1, 0.5) and 0 rotation
    cent = [0,0;0.5+0.1,sqrt(3)/2;1,0]; % Locations of particles
    cutoff = 0.4;
    
    % Call the function directly
    e = enerHullTri(app,coor,cutoff,cent,hu);

    % Expected energy
    expectedEnergy=-3*cutoff^2+0.01;
    
    % Verify results with tolerance for floating-point calculations
    testCase.verifyEqual(e, expectedEnergy, 'AbsTol', 1e-10, 'Hexagon coordinates incorrect');
end

function testBrokenBond(testCase)
    % Test energy for one broken bond
    
    % Create the app instance using the helper
    app = setupTestApp();
    testCase.addTeardown(@() close(app.UIFigure));
    
    % Define test inputs
    hu = [1]; % Hull parameters [a]
    coor = [0.5, 1/(2*sqrt(3)), 0];  % Center at (1, 0.5) and 0 rotation
    cent = [0,0;1,sqrt(3)/2;1,0]; % Locations of particles
    cutoff = 0.4;
    
    % Call the function directly
    e = enerHullTri(app,coor,cutoff,cent,hu);

    % Expected energy
    expectedEnergy=-2*cutoff^2;
    
    % Verify results with tolerance for floating-point calculations
    testCase.verifyEqual(e, expectedEnergy, 'AbsTol', 1e-10, 'Hexagon coordinates incorrect');
end