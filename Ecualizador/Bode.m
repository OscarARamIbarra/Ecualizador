clear all;
clc;

w=[0.1:0.1:100000000];

sys1 = tf([0 1.419],[1 1.9160 1.419]);
sys2=tf([105],[1 10 45 105 105])

bode(w,sys1,w,sys2);
grid on

