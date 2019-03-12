clc
clear all
close all
%%
Fs = 1000;
t = 0:1/Fs:2*pi;
w0 = 2*pi*Fs/5;
w1 = 2*pi*Fs/6;
%fft is for fourier transform and xt is the function with product of functions cos((w0)*t) and cos((w1)*t), where w0 and w1 are the maximum frequencies of their respective functions.
xt = (cos((w0)*t) .* cos((w1)*t));
L = length(xt);
Y = fft(xt, L);
fvec = Fs/2*linspace(-1, 1, L);
Xw = fftshift(Y);
plot(fvec, 10*log10(abs(Xw)));
xlabel('Frequency');
ylabel('Xw');