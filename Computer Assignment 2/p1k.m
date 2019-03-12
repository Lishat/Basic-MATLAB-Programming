clc;
close all;
clear all;
%%
t = 0:0.001:3;
t0 = 1/3;
w0 = 2*pi;
x = sin(w0*(t - t0));
plot(t, x);