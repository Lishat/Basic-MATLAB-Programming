clc;
clear all;
close all;
%%
x = -1/2:0.001:7/2;
y = zeros(size(x));
for i = 1:length(x)
        p = 2*x(i) - 3;
        if (p <= -4) || p >= (3)
            y(i) = 0;
        elseif p >= (-4) && p <= (-2)
            y(i) = 0;
        elseif p >= (-2) && p <= (-1)
            y(i) = 1;
        elseif p >= (-1) && p <= (0)
            y(i) = (-p-1);
        elseif p >= (0) && p <= (1)
            y(i) = (p-1);
        elseif p >= (1) && p <= (2)
            y(i) = 2;
        elseif p >= (2) && p <= (3)
            y(i) = -p+3;
        end;
    end;
    plot(x, y);