clc
clear all
close all
%%
n = 0:1:7;
k = 1;
N = 8;
h = exp(-j * 2 * pi * n * k / N)
x = [-1, 1, -1, 1, -1, 1, -1, 1]
y = myConvolution(x, h)
z = myTabularConvolution(x, h)
a = [1,0.2929 + 0.7071i, -0.2929 + 0.2929i, 1+0.4142i,-0.4142i, 0.7071 - 0.2929i, -0.7071-0.7071i, 0, 1, -0.2929 - 0.7071i, 0.2929 - 0.2929i, -1-0.4142i, 0.4142i, -0.7071 + 0.2929i, 0.7071 + 0.7071i];
plot(real(y), '+--');hold on;
plot(real(z), 's-.');hold on;
plot(real(a), 'd:');
legend('Convolution', 'Matrix', 'Theoretical');
figure;
plot(imag(y), '+--');hold on;
plot(imag(z), 's-.');hold on;
plot(imag(a), 'd:');
legend('Convolution', 'Matrix', 'Theoretical');