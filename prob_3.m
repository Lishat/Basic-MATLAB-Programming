clc 
clear all
close all
%%
nt = 10;
inc = linspace(0, 10, 10);
for nx = 1:length(inc)
    t = 0:inc(nx):nt;
    xt = (1 + j)*exp(j*pi*t/2);
    subplot(2, 1, 1);
    plot(t, real(xt));
    xlabel('Time');
    ylabel('Real part');
    subplot(2, 1, 2);
    plot(t, imag(xt));
    xlabel('Time');
    ylabel('Imaginary part');
    drawnow;
    pause(0.1);
    egx(nx) = trapz(t, abs(xt).^2);
end;
powx = egx./(inc);
figure;
subplot(2, 1, 1);
plot(inc, egx, '-o');
xlabel('Time Support Length');
ylabel('Energy');
subplot(2, 1, 2);
plot(inc, powx, '-o');
xlabel('Time Support Length');
ylabel('Power');