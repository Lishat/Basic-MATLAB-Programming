clc 
clear all 
close all

%%
Nt = logspace(2, 5, 10);

for nx = 1:length(Nt)
    t = -Nt(nx):0.1:Nt(nx);
    xt = exp(-abs(t));
    plot(t, xt);
    xlabel('time');
    ylabel('exp(-|t|)');
    drawnow; pause(0.1);
    egx(nx) = trapz(t, xt.^2);
end;
figure;
semilogx(Nt, egx, 'o-', 'MarkerSize', 4, 'MarkerFaceColor', 'w');
ylim([.8, 1.2]);