clc
clear all
close all
%%
t = 0:0.01:10;
x = t+2;
h = t-2;
y = conv(x, h);
y