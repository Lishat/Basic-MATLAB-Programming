clc
close all
clear all
%%
a = -1.5:0.01:1.5;
b = mod(a+0.5, 1)-0.5;
plot(a, b, 'o');