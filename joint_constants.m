function [d, d1, h, h1, Li, li, xa, ya, za, jt_cap_low, jt_cap_high, phi, num_actuators, sf] = joint_constants()
%kinematic constants for the 4-DoF kinematic mechanism
%Ai1 and Ai2 = centers of the ball jionts on arm i;
%Bi1 and Bi2 = centers of the ball joints on the travelling plate (involved in
%chain i)
%Ai = middle of [Ai1, Ai2]
%Bi = middle of [Bi1, Bi2]
%bi = vector (Ai,Bi)
%q1, q2, q3, q4 = actuated joint angles
%Pi = "Center" of the actuated joint, i.e. a point on the actuated axis, in
%the arm's plan of symmetry;
%ai = is vector (Pi, Ai)
%Li = arm length (between Pi and Ai)
%ui = unit vectors along the actuated joints
%li=  rod length (between Ai and Bi)
%h1 and d1 = distances between Ci and Bi, respectievly, along y-axis and
%along x-xis;
%d = travelling plate length (along x-axis)
%h = length of the travelling plate's parralelogram bars;
%D = control point
%x, y, z, theta =  task space coordinates (position of point D; motion
%angle of the parallelogram)


d=.0075; % meters, travelling plate length (along x-axis)
d1=.01215; % meters, distance between Ci and Bi along x-axis

h=.0175; % meters, length of the travelling pltae's parralelogram bars;
h1=.00497; % meters, distance between Ci and Bi along y-axis

Li = 0.0175; % meters, arm length (between Pi and Ai)
li = 0.015; % meters, rod length (between Ai and Bi)
 

%distance from Pi to origin, O
xa = .01485; % meters
ya = .01485; % meters
za = .000; % meters

num_actuators = 4;

jt_cap_low = 27; %degrees, joint minimium actuator angle
jt_cap_high = 87; %degrees, joint maximum actuator angle

phi = [pi/4, 3*pi/4, 5*pi/4, 7*pi/4]; %angle between origin and joint location on ground plane
    
end

