clc
clear all
close all
%%
t = 0:1:6;
xt = sin(7/22 * pi * t)
h = [0, 2, -1, 3]
y = myConvolution(xt, h)
z = myTabularConvolution(xt, h)
a = [0,0,1.6825,0.9780,1.8988,1.0751,-0.7363,-1.8712,-2.5967,-0.8452];
plot(z, '+--');hold on;
plot(y, 's-.');hold on;
plot(a, 'd:');
legend('Convolution','Matrix','Theoretical');