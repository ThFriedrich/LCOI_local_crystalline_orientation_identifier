function results = runAllTests
    % Run all tests in the project
    
    % Get the directory containing this script
    testDir = fileparts(mfilename('fullpath'));
    
    % Ensure we're in the test directory
    currentDir = pwd;
    cd(testDir);
    
    % Find all test files
    testFiles = dir(fullfile(testDir, 'test*.m'));
    testNames = {testFiles.name}';
    testNames = cellfun(@(x) x(1:end-2), testNames, 'UniformOutput', false);
    
    % Run all tests
    results = runtests(testNames);
    
    % Display summary
    numPassed = sum([results.Passed]);
    numTotal = numel(results);
    disp(['Test Results: ' num2str(numPassed) '/' num2str(numTotal) ' tests passed']);
    
    % Create a table with detailed results
    testFileNames = {results.Name}';
    passed = [results.Passed]';
    durations = [results.Duration]';
    
    resultsTable = table(testFileNames, passed, durations, ...
        'VariableNames', {'Test', 'Passed', 'Duration_sec'});
    
    disp(resultsTable);
    
    % Return to original directory
    cd(currentDir);
    
    if numPassed < numTotal
        warning('Some tests failed!');
    end
end