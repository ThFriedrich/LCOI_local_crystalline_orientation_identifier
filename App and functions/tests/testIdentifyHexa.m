function tests = testIdentifyHexa
    tests = functiontests(localfunctions);
end

function testPerfectFit(testCase)
    % Test a perfect fit
    
    % Create the app instance using the helper
    app = setupTestApp();
    testCase.addTeardown(@() close(app.UIFigure));
    
    % Set up the parameters needed for the function
    app.hullHexa=[2, 4, 1];
    app.imageP= uint8(rand(10));
    app.centers=[1,2;2,4;4,4;5,2;4,0;2,0]; 
    app.radii=0.25.*ones(4,1);
    
    app.SymmetryhexagonSwitch.Value='2';
    app.MultiplicativehexagonalEditField.Value=6;
    app.FractionhexagonalEditField.Value=1.4;

    identifyHexa(app)
    numMasks=size(app.coorOfMasksHexa,1);
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
   app.hullHexa=[2, 4, 1];
    app.imageP= uint8(rand(10));
    app.centers=[1,2;2,4;4,4;5,2;4,0]; 
    app.radii=0.25.*ones(4,1);
    
    app.SymmetryhexagonSwitch.Value='2';
    app.MultiplicativehexagonalEditField.Value=6;
    app.FractionhexagonalEditField.Value=1.4;

    identifyHexa(app)
    numMasks=size(app.coorOfMasksHexa,1);
    close

     % Verify results
    testCase.verifyEqual(numMasks, 0, 'Still 1 mask was detected');
end

function testStrainedFitPermisive(testCase)
    % Test strained fit with different parameters
    
    % Create the app instance using the helper
    app = setupTestApp();
    testCase.addTeardown(@() close(app.UIFigure));
    
    app.hullHexa=[2, 4, 1];
    app.imageP= uint8(rand(10));
    app.centers=[1,2;2,4;4,4;5.5,2;4,0;2,0]; 
    app.radii=0.25.*ones(4,1);
    
    app.SymmetryhexagonSwitch.Value='2';
    app.MultiplicativehexagonalEditField.Value=6;
    app.FractionhexagonalEditField.Value=1.4;

    identifyHexa(app)
    numMasks=size(app.coorOfMasksHexa,1);
    close

    % Verify results
    testCase.verifyEqual(numMasks, 1, 'No mask was detected for permisive parameters');
    
    % Check for more restrictive parameters
    app.FractionhexagonalEditField.Value=5;

    identifyHexa(app)
    numMasks=size(app.coorOfMasksHexa,1);
    close

    % Verify results
    testCase.verifyEqual(numMasks, 0, 'A mask was detected for restrictive parameters');

    % Recover detected mask
    app.MultiplicativehexagonalEditField.Value=5;

    identifyHexa(app)
    numMasks=size(app.coorOfMasksHexa,1);
    close

    % Verify results
    testCase.verifyEqual(numMasks, 1, 'No mask was recovered');
end