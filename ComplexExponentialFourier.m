clc
clear all
close all
%%
Fs = 100;
T0 = 1;
w0 = 2*pi;
tvec = 0:1/Fs:T0;
A = 1;
Phi = pi/8;
xt = A*cos(w0*tvec + Phi);
kvec = -10:10;
for kx = 1:length(kvec)
    k = kvec(kx);
    basis = exp(-i*k*w0*tvec);
    C(kx) = 1/T0 *trapz(tvec, xt.*basis);
end;
stem(kvec, real(C));
figure;
stem(kvec, imag(C));