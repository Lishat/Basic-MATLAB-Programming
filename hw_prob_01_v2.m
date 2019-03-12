clc
clear all
close all

%%
Nt = 1000;
inc = logspace(-4, 0, 10);
for nx = 1:length(inc)
    t = -Nt: inc(nx) : Nt;
    xt = exp(-abs(t));
    plot(t, xt);
    xlabel('time');
    ylabel('exp(-|t|)');
    drawnow;
    pause(0.1);
    egx(nx) = trapz(t, xt.^2);
end;
figure;
semilogx(inc, egx, 'o-');