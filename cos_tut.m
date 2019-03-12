clc
clear all
close all
%%
N = 1000;
Fs = N;
%t = 1:N;
t = 0:1/Fs:2*pi;
w0=Fs/8;%use 5 instead of 8 for only cos(2*pi*w0*t), since w0 should be less than f0/6 in this case unlike f0/2 in previous case
xt = cos(2*pi*w0*t)+ cos(4*pi*w0*t) + cos(6*pi*w0*t);
L = length(xt);
subplot(1, 2, 1);
plot(t(1:Fs/5), xt(1:Fs/5));
NFFT = L;
Y = fft(xt, NFFT);
fvec = Fs/2*linspace(-1, 1, NFFT);
Xw = fftshift(Y);
subplot(1, 2, 2);
plot(fvec, 10*log10(abs(Xw)));