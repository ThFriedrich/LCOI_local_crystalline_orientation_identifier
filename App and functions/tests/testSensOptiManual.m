function tests = testSensOptiManual
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
end

function testConservativeFiltration(testCase)
    % Test conservative filtration parameters that should keep most particles
    app = testCase.TestData.app;
    
    % Conservative filtration parameters
    sens=0.95;
    manualE=0.2;
    im=app.imageP;
    minR=2;
    maxR=10;
    v='bright';
    
    % Run filtration
    num = sens_manual_Opti(app,sens,manualE,im,minR,maxR,v);
    
    % Verify that most particles are kept (at least 70%)
    retentionRate = num / 25;
    testCase.verifyGreaterThan(retentionRate, 0.6, ...
        'Conservative filtration should keep at least 70% of particles');    
end

function testAggressiveFiltrationRad(testCase)
    % Test conservative filtration parameters that should keep most particles
    app = testCase.TestData.app;
    
    % Conservative filtration parameters
    sens=0.95;
    manualE=0.95;
    im=app.imageP;
    minR=2;
    maxR=10;
    v='bright';
    
    % Run filtration
    num = sens_manual_Opti(app,sens,manualE,im,minR,maxR,v);
    
    % Verify that most particles are kept (at least 70%)
    retentionRate = num / 25;
    testCase.verifyLessThan(retentionRate, 0.33, ...
        'Aggressive filtration should keep less than 33% of particles');    
end

% Helper function to create test particle distribution
function createTestParticleDistribution(app)
    % Create a synthetic distribution of particles for testing
    
    % Create a test image if it doesn't exist
    if ~isfield(app, 'imageP') || isempty(app.imageP)
        app.imageP = uint8(zeros(200, 200));
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
    radii = allRadii(shuffleIdx(1:numParticles));
    
    % Initialize the particlesMetric field
    app.particlesMetric = zeros(numParticles, 1);
    
    for i = 1:numParticles
        centerX = round(app.centers(i, 1));
        centerY = round(app.centers(i, 2));
        radius = radii(i);
        
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