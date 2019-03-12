clc
clear all
close all
%%
function ut = myUnitStep(t)
    ut = zeros(size(t));
    ut(t >= 0) = 1;
    return;
tvec = -5:0.001:10;
Nt = length(tvec);
x_n = myUnitStep(tvec);
plot(tvec, x_n);

