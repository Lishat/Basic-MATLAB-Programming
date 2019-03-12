clc
clear all
close all
%%
T = 2;
tvec = -T/2:1/100:T/2;
w0 = 2*pi/T;
x_t = zeros(size(tvec));
x_t(tvec < 0) = -1;
x_t(tvec >= 0) = 1;
kvec = -10:10;
for kx = 1:length(kvec)
    k = kvec(kx);
    basis1 = exp(-i*k*w0*tvec);
    c(kx) = 1/T*trapz(tvec, x_t.*basis1);
end;
subplot(2, 1, 1);
stem(kvec, real(c));
subplot(2, 1, 2);
stem(kvec, imag(c));