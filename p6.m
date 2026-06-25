% Variables
apogee = 45000e3;
perigee = 7000e3;

% EXERCITIU 1
% A. Calculați axa semimajoră a orbitei eliptice (folositi formula)
axaSemimajora = 26000000;   % Folositi formula
disp("axa semimajora = " + axaSemimajora);
% B. Calculați excentricitatea orbitei (folositi formula)
eccentricity = 0.73;    % Folositi formula
disp("Eccentricity: " + eccentricity);

% Define Satellite Scenario
startTime = datetime(2020, 5, 1, 11, 36, 0);
stopTime = startTime + days(1);
sampleTime = 60;
scenario = satelliteScenario(startTime, stopTime, sampleTime);

inclination = 0;
rightAscensionOfAscendingNode = 0;
argumentOfPeriapsis = 0;
trueAnomaly = 0;
satA = satellite(scenario, ...
    axaSemimajora, ...
    eccentricity, ...
    inclination, ...
    rightAscensionOfAscendingNode, ...
    argumentOfPeriapsis, ...
    trueAnomaly, ...
    "Name", "Satelit A");

% EXERCITIU 2 - Creare Satelit B orbita circulara

% EXERCITIU 3 - Creare Statie Terestra
gs = groundStation(scenario, ...
    "Name", "Ground Station", ...
    "Latitude", 10, ...
    "Longitude", -30);

% EXERCITIU 4 - Create gimbal + antena directionala

access(satA, gs);

viewer = satelliteScenarioViewer(scenario);
play(scenario);
