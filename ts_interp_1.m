clc
clear all
close all
Fs = 1000;
t = 0:1/Fs:1;
x = sin(2*pi*30*t) + sin(2*pi*60*t);
lx = length(x);
y = interp(x, 4);
pIx = 30;
I = 4;
subplot(2, 1, 1);
stem(0:pIx, x(1:pIx+1), 'filled', 'markersize', 3);
grid on
xlabel('Sample number');
ylabel('Original');
subplot(2, 1, 2);
stem(0:I*pIx, y(1:I*pIx+1), 'filled', 'markersize', 3);
grid on
xlabel('Sample number');
ylabel('Interpolated');