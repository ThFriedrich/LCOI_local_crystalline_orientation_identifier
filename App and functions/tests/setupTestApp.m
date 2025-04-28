function app = setupTestApp
    % Helper function to create app instance from tests folder
    
    % Get the current directory (test directory)
    testDir = fileparts(mfilename('fullpath'));
    
    % Get the parent directory where the app is located
    projectRoot = fileparts(testDir);
    
    % Add parent directory to path temporarily
    originalPath = path;
    addpath(projectRoot);
    
    % Create app instance
    app = LCOI_CrystalAnalysis; 
    
    % Restore original path if needed in the future
    path(originalPath);
end