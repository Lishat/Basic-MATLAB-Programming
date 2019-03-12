clc
clear all
close all

%%
Nt = logspace(2, 5, 10);

for nx = 1: length(Nt)
    t = -Nt(nx):0.1:Nt(nx);
    xt = cos(pi*t/2 + pi/4);
    plot(t,xt);
    xlabel('time');
    ylabel('cos fn');
    drawnow;
    pause(0.1);
    egx(nx) = trapz(t, xt.^2);
end
powx = egx./(2*Nt);
figure;
subplot(2,1,1);
loglog(Nt, egx, 'o-');
xlabel('Time');
ylabel('Energy');
subplot(2,1,2);
semilogx(Nt, powx);
xlabel('Time support Length');
ylabel('Power');
ylim([0.4, 0.6]);