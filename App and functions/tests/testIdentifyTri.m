function tests = testIdentifyTri
    tests = functiontests(localfunctions);
end

function testPerfectFit(testCase)
    % Test a perfect fit
    
    % Create the app instance using the helper
    app = setupTestApp();
    testCase.addTeardown(@() close(app.UIFigure));
    
    % Set up the parameters needed for the function
    app.hullTri=[1];
    app.imageP= uint8(rand(10));
    app.centers=[0,0;1,0;0.5,sqrt(3)/2];
    app.radii=0.25.*ones(3,1);
    
    app.MultiplicativetriangularEditField.Value=3;
    app.FractiontriangularEditField.Value=1.4;

    identifyTri(app)
    numMasks=size(app.coorOfMasksTri,1);
    close

     % Verify results
    testCase.verifyEqual(numMasks, 1, 'No mask was detected');
end

function testOneMissing(testCase)
    % Test 1 missing particle
    
    % Create the app instance using the helper
    app = setupTestApp();
    testCase.addTeardown(@() close(app.UIFigure));
    
    % Set up the parameters needed for the function
    app.hullTri=[1];
    app.imageP= uint8(rand(10));
    app.centers=[0,0;1,0];
    app.radii=0.25.*ones(2,1);
    
    app.MultiplicativetriangularEditField.Value=3;
    app.FractiontriangularEditField.Value=1.4;

    identifyTri(app)
    numMasks=size(app.coorOfMasksTri,1);
    close

     % Verify results
    testCase.verifyEqual(numMasks, 0, 'Still 1 mask was detected');
end

function testStrainedFit(testCase)
    % Test a strained fit with different variables
    
    % Create the app instance using the helper
    app = setupTestApp();
    testCase.addTeardown(@() close(app.UIFigure));
    
    app.hullTri=[1];
    app.imageP= uint8(rand(10));
    app.centers=[0,0;1,0;0.5,sqrt(3)/2+0.25];
    app.radii=0.25.*ones(3,1);
    
    app.MultiplicativetriangularEditField.Value=3;
    app.FractiontriangularEditField.Value=1.4;

    identifyTri(app)
    numMasks=size(app.coorOfMasksTri,1);
    close

    % Verify results
    testCase.verifyEqual(numMasks, 1, 'No mask was detected for permisive parameters');
    
    % Check for more restrictive parameters
    app.FractiontriangularEditField.Value=5;

    identifyTri(app)
    numMasks=size(app.coorOfMasksTri,1);
    close

    % Verify results
    testCase.verifyEqual(numMasks, 0, 'A mask was detected for restrictive parameters');

    % Recover detected mask
    app.MultiplicativetriangularEditField.Value=2;

    identifyTri(app)
    numMasks=size(app.coorOfMasksTri,1);
    close

    % Verify results
    testCase.verifyEqual(numMasks, 1, 'No mask was recovered');
end