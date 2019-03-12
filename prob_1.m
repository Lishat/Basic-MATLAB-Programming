clc;
clear all;
close all;
%%
Nt = logspace(2, 5, 10);
for nx = 1:length(Nt)
    t = -Nt(nx):0.1: Nt(nx);
    xt = exp(-abs(t));
    plot(t, xt);
    xlabel('time');
    ylabel('exp(-|t|)');
    drawnow;
    pause(0.1);
    egx(nx) = trapz(t, xt.^2);
end;
powx = egx./(2*Nt);
figure;
subplot(2, 1, 1);
semilogx(Nt, egx);
ylim([.8, 1.2]);
ylabel('Energy');
xlabel('Time Support Length');
subplot(2,1,2);
loglog(Nt, powx);
xlabel('Time support Length');
ylabel('Power');

