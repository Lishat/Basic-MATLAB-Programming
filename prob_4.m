clc
clear all
close all

%%
Nt = logspace(2, 5, 10);
for nx = 1:length(Nt)
    n = 0:Nt(nx) - 1;
    k_0 = floor(Nt(nx)/4);
    xt = cos(2*pi*k_0*n/Nt(nx));
    stem(n, xt);
    xlabel('index');
    ylabel('cos fn');
    drawnow; pause(0.1);
    egx(nx) = sum(abs(xt).^2);
end
powx = egx./(Nt);
figure;
subplot(2, 1, 1);
loglog(Nt, egx, 'o-', 'MarkerSize', 4, 'MarkerFaceColor', 'w');
ylabel('Energy');
xlabel('Time support Length');
subplot(2,1,2);
semilogx(Nt, powx);
xlabel('Time support Length');
ylabel('Power');
ylim([0, 1]);