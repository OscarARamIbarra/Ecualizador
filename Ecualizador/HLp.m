clear all;
close all;
clc;
%R1=0.34079;
%R2=0.475;
%C=1;
R1=2631;
R2=2347;
C=0.1*10.^-6;
w01=1/((R1*C)^2);
w02=1/((R2*C)^2);
q=sqrt(1.419)/0.5219;
q2=sqrt(1.5912)/0.8055;
sys=tf([w01],[1 (2/(R1*C)) w01])*tf([w02],[1 (2/(R2*C)) w02])
sys2=tf([105],[1 10 45 105 105])
%sys3=tf([1.419],[1 q 1.419])*tf([1.5912],[1 q2 1.5912])
opts = bodeoptions;
opts.FreqUnits = 'Hz';
bodeplot(sys2,'-r',opts);

grid on;
%%
clear all;
close all;
clc;
%R1=0.34079;
%R2=0.475;
%C=1;
R1=2405;
R2=2696;
C=0.1*10.^-6;
w01=1/((R1*C)^2);
w02=1/((R2*C)^2);
q=sqrt(1.419)/0.5219;
q2=sqrt(1.5912)/0.8055;
sys=tf([1 0 0],[1 (2/(R1*C)) w01])*tf([1 0 0],[1 (2/(R2*C)) w02])
sys2=tf([105 0 0 0 0],[1 10 45 105 105])
%sys3=tf([1.419],[1 q 1.419])*tf([1.5912],[1 q2 1.5912])
opts = bodeoptions;
opts.FreqUnits = 'Hz';
bodeplot(sys,'-r',opts);
grid on;

%%
clear all;
close all;
clc;
%R1=0.34079;
%R2=0.475;
%C=1;
R1=2405;
R2=2347;
C1=1*10.^-6;
C2=0.01*10.^-6;
w01=1/((R1*C1)^2);
w02=1/((R2*C2)^2);
q=sqrt(1.419)/0.5219;
q2=sqrt(1.5912)/0.8055;
sys=tf([1 0 0],[1 (2/(R1*C1)) w01])*tf([w02],[1 (2/(R2*C2)) w02])
sys2=tf([1 0 0],[1 10 45 105 105])
%sys3=tf([1.419],[1 q 1.419])*tf([1.5912],[1 q2 1.5912])
sys3=tf([1 0 0],[1 5.7924 9.14013])*tf([11.4878],[1 4.20758 11.4878])
opts = bodeoptions;
opts.FreqUnits = 'Hz';
bodeplot(sys,'-r',opts);
grid on;