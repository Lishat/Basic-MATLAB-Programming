clc
clear all
close all
%%
Nt = linspace(0, 0.5, 10);
for nx = 1:length(Nt)
    t = 0:Nt(nx)/10:Nt(nx);
    xt = tan(pi * t/2);
    plot(t, xt);
    xlabel('time');
    ylabel('tan(pi * t/2)');
    drawnow;
    pause(0.1);
    egx(nx) = trapz(t, xt.^2);
end;
powx = egx./(Nt);
figure;
subplot(2, 1, 1);
plot(Nt, egx, 'o-');
ylim([0, 0.5]);
ylabel('Energy');
xlabel('Time Support Length');
subplot(2,1,2);
plot(Nt, powx, 'o-');
xlabel('Time support Length');
ylabel('Power');
