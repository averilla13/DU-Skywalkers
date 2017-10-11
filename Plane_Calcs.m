clear all
close all
clc
%% Weight -> Lift -> Drag -> Thrust
%% Lift

% Lift = (1/2) d v^2 A CL  since lift must equal plane weight, assumed to
% be 55 pounds = 244.652N the necessary V is determined, from a standard CL being
% used.
length = 8;% length of total wingspan in ft
width = 1.5;%width in ft
weight = 55;%weight lbs

w = weight*0.453592;%pound to kg
len = length*.3048;%convert to meters
wid = width*.3048;%convert to meters
d = 1.225; %kg/m^3 = will be a function of altitude in final flight calc
A = len*wid; %planform area m^2
CL = 1.2;%Coefficient of lift

V = sqrt((w*2)/(d*A*CL));%Speed equation

Stall_Speed = V*2.23694 %MPH (Top speed between 2.5-3 X stall speed
Max_Speed = Stall_Speed*3

%% Thrust of Prop
% d = 6;
% pitch = 4.5;
% 
% cd = .05; %standard drag coefficient of a plane
% F = (1+cd)*w;
% RPMP = (F/(4.392399*10^-8)*((d^3.5)/(sqrt(pitch)))*((4.2333*10^-4)*pitch));
% RPM = nthroot(RPMP,4)