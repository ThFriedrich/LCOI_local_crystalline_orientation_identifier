function tests = testIdentifyRect
    tests = functiontests(localfunctions);
end

function testPerfectFit(testCase)
    % Test a perfect fit
    
    % Create the app instance using the helper
    app = setupTestApp();
    testCase.addTeardown(@() close(app.UIFigure));
    
    % Set up the parameters needed for the function
    app.hullRect=[2,1];
    app.imageP= uint8(rand(10));
    app.centers=[0,0;1,0;0,2;1,2];
    app.radii=0.25.*ones(4,1);
    
    app.SymmetryrectangleSwitch.Value='2';
    app.MultiplicativerectangularEditField.Value=4;
    app.FractionrectangularEditField.Value=1.4;

    identifyRect(app)
    numMasks=size(app.coorOfMasksRect,1);
    close

     % Verify results
    testCase.verifyEqual(numMasks, 1, 'No mask was detected');
end

function testOneMissing(testCase)
    % Test with 1 missing particle
    
    % Create the app instance using the helper
    app = setupTestApp();
    testCase.addTeardown(@() close(app.UIFigure));
    
    % Set up the parameters needed for the function
    app.hullRect=[2,1];
    app.imageP= uint8(rand(10));
    app.centers=[0,0;1,0;0,2];
    app.radii=0.25.*ones(4,1);
    
    app.SymmetryrectangleSwitch.Value='2';
    app.MultiplicativerectangularEditField.Value=4;
    app.FractionrectangularEditField.Value=1.4;

    identifyRect(app)
    numMasks=size(app.coorOfMasksRect,1);
    close

     % Verify results
    testCase.verifyEqual(numMasks, 0, 'Still 1 mask was detected');
end

function testStrainedFit(testCase)
    % Test a strained fit with different variables
    
    % Create the app instance using the helper
    app = setupTestApp();
    testCase.addTeardown(@() close(app.UIFigure));
    
    % Set up the parameters needed for the function
    app.hullRect=[2,1];
    app.imageP= uint8(rand(10));
    app.centers=[0,0;1,0;0,2;1,2.5];
    app.radii=0.25.*ones(4,1);
    
    app.SymmetryrectangleSwitch.Value='2';
    app.MultiplicativerectangularEditField.Value=4;
    app.FractionrectangularEditField.Value=1.4;

    identifyRect(app)
    numMasks=size(app.coorOfMasksRect,1);
    close

    % Verify results
    testCase.verifyEqual(numMasks, 1, 'No mask was detected for permisive parameters');
    
    % Check for more restrictive parameters
    app.FractionrectangularEditField.Value=5;

    identifyRect(app)
    numMasks=size(app.coorOfMasksRect,1);
    close

    % Verify results
    testCase.verifyEqual(numMasks, 0, 'A mask was detected for restrictive parameters');

    % Recover detected mask
    app.MultiplicativerectangularEditField.Value=3;

    identifyRect(app)
    numMasks=size(app.coorOfMasksRect,1);
    close

    % Verify results
    testCase.verifyEqual(numMasks, 1, 'No mask was recovered');
end