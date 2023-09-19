% This program produces configuraition of each joint with given angle of
% rotation at each joint.
% func_rot funtion needed for this program

clc;
clear;
close;

theta0 = deg2rad(30);           %Toe angle
theta1 = theta0+deg2rad(115);   %Ankle angle
theta2 = theta1+deg2rad(-145);  %Knee angle
theta3 = theta2+deg2rad(105);   %Hip/Pelvic extension angle
theta4 = theta3+deg2rad(165);   %Shoulder extension angle
theta5 = theta4+deg2rad(-120);  %Elbow extension angle
l0 = [100; 0; 0];               %Distance from global frame to toe frame
l1 = [20; 0; 0];                %Feet length
l2 = [40; 0; 0];                %Shank length
l3 = [40; 0; 0];                %Thigh length
l4 = [70; 0; 0];                %Trunk length
l5 = [40; 0; 0];                %Upper arm length
l6 = [40; 0; 0];                %Forearm length
P01 = l0;
P02 = P01 + func_rot(theta0) * l1; %Transforamtion of ankle wrt global frame
P03 = P02 + func_rot(theta1) * l2; %Transforamtion of knee wrt global frame
P04 = P03 + func_rot(theta2) * l3; %Transforamtion of hip wrt global frame
P05 = P04 + func_rot(theta3) * l4; %Transforamtion of shoulder wrt global frame
P06 = P05 + func_rot(theta4) * l5; %Transforamtion of elbow wrt global frame
P07 = P06 + func_rot(theta5) * l6; %Transforamtion of Forearm end wrt global frame
plot([P01(1), P02(1), P03(1), P04(1), P05(1), P06(1), P07(1)], [P01(2), P02(2), P03(2), P04(2), P05(2), P06(2), P07(2)], '-Ok', 'LineWidth', 2);
xlabel("x-axis");
ylabel("y-axis");
axis([0,200, 0, 200]);
grid on;