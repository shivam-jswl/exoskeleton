% First file to run before running any other file
clc;
clear;
clf;
close;
g = 9.81;        % Gravity in m/sec^2
ShoulderAdduction = deg2rad(-45); % Enter angle of shoulder adduction in Degree 
                                % Refer Figure  for refernce of the angle
                                % Limit is [-90 0] degrees
ShoulderExtension = deg2rad(45); % Enter angle of shoulder Extension in Degree 
                                % Refer Figure  for refernce of the angle
                                % Limit is [0 90] degrees

kp = -50;
kd = -20;
ki = -50;


Wl = 30;                                  % weight of the load in N
thetaEE_Ref = deg2rad(90);