function tests = testFiltration
    % Test suite for the filtration function
    tests = functiontests(localfunctions);
end

function setup(testCase)
    % Setup for all test cases
    testCase.TestData = struct();
    testCase.TestData.app = setupTestApp();
    testCase.addTeardown(@() close(testCase.TestData.app.UIFigure));
    
    % Create synthetic test data with particle distribution
    createTestParticleDistribution(testCase.TestData.app);
    
    % Store original data for comparison
    testCase.TestData.originalCenters = testCase.TestData.app.centers;
    testCase.TestData.originalRadii = testCase.TestData.app.radii;
    testCase.TestData.originalCount = length(testCase.TestData.app.radii);
end

function testConservativeFiltration(testCase)
    % Test conservative filtration parameters that should keep most particles
    app = testCase.TestData.app;
    originalCount = testCase.TestData.originalCount;
    
    % Conservative filtration parameters
    diskFact = 1.0;    
    fracKept = 0.25;    % Keep particles with metric > 50% of cutoff
    factStd = 0;       % Standard weight for standard deviation
    per = 50;          % Use median metric as reference
    fact1 = 0;         % Standard weights for min/max
    fact2 = 0;
    
    % Run filtration
    filtration(app, diskFact, fracKept, factStd, per, fact1, fact2);
    
    % Verify that most particles are kept (at least 70%)
    remainingCount = length(app.radii);
    retentionRate = remainingCount / originalCount;
    testCase.verifyGreaterThan(retentionRate, 0.7, ...
        'Conservative filtration should keep at least 70% of particles');
    
    % Verify that metrics were calculated
    % testCase.verifyTrue(isfield(app, 'particlesMetric'), ...
    %     'Particle metrics should be calculated');
    testCase.verifyEqual(length(app.particlesMetric), remainingCount, ...
        'Metrics length should match remaining particle count');
end

function testAggressiveFiltration(testCase)
    % Test aggressive filtration parameters that should filter out more particles
    app = testCase.TestData.app;
    originalCount = testCase.TestData.originalCount;
    
    % Aggressive filtration parameters
    diskFact = 1.0;    % Much larger than particle radius
    fracKept = 0.9;    % Keep only particles with metric > 90% of cutoff
    factStd = 1;       % Higher weight for standard deviation
    per = 90;          % Use 75th percentile metric as reference
    fact1 = 1;         % Higher weights for min/max
    fact2 = 1;
    
    % Run filtration
    filtration(app, diskFact, fracKept, factStd, per, fact1, fact2);
    
    % Verify that fewer particles are kept (less than 50%)
    remainingCount = length(app.radii);
    retentionRate = remainingCount / originalCount;
    testCase.verifyLessThan(retentionRate, 0.5, ...
        'Aggressive filtration should keep less than 50% of particles');
    
    % Verify consistency between centers and radii arrays
    testCase.verifyEqual(size(app.centers, 1), length(app.radii), ...
        'Centers and radii arrays should have consistent dimensions');
end



% Helper function to create test particle distribution
function createTestParticleDistribution(app)
    % Create a synthetic distribution of particles for testing
    
    % Create a test image if it doesn't exist
    if ~isfield(app, 'imageP') || isempty(app.imageP)
        app.imageP = uint8(zeros(500, 500));
    end
    
    % Create a distribution of particle sizes
    numParticles = 25;
    
    % Generate random centers within the image bounds
    % Add significant padding to avoid edge issues
    padding = 0; 
    imWidth = size(app.imageP, 2);
    imHeight = size(app.imageP, 1);
    
    % Ensure centers are well within the image bounds
    app.centers = [padding + rand(numParticles, 1) * (imWidth - 2*padding), padding + rand(numParticles, 1) * (imHeight - 2*padding)]; 
    
    % Generate radius distribution - making particles smaller to avoid boundary issues
    smallRadii = 2 + rand(round(numParticles*0.5), 1) * 2;  % 2-4 pixel radius
    mediumRadii = 4 + rand(round(numParticles*0.3), 1) * 3; % 4-7 pixel radius
    largeRadii = 7 + rand(round(numParticles*0.2), 1) * 3;  % 7-10 pixel radius (reduced)
    
    % Combine and randomize
    allRadii = [smallRadii; mediumRadii; largeRadii];
    shuffleIdx = randperm(length(allRadii));
    app.radii = allRadii(shuffleIdx(1:numParticles));
    
    % Initialize the particlesMetric field
    app.particlesMetric = zeros(numParticles, 1);
    
    % Simple and direct approach to drawing the particles
    for i = 1:numParticles
        centerX = round(app.centers(i, 1));
        centerY = round(app.centers(i, 2));
        radius = app.radii(i);
        
        % Draw a bright circle safely using direct coordinates
        [xx, yy] = meshgrid(1:imWidth, 1:imHeight);
        mask = ((xx - centerX).^2 + (yy - centerY).^2) <= radius^2;
        
        % Apply the mask directly to the image
        app.imageP(mask) = 200;  % Bright particles
        
    end
    
    % Add some noise to the image
    noise = uint8(randn(size(app.imageP)) * 10);
    app.imageP = uint8(min(255, max(0, double(app.imageP) + double(noise))));
end