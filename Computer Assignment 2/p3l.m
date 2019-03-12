clc;
clear all;
close all;
%%
x = -5:0.001:3;
for i = 1:length(x)
        if (x(i) <= -5) || (x(i) >= (2))
            y(i) = 0;
        elseif x(i) >= (-5) && x(i) <= (-3)
            y(i) = 0;
        elseif x(i) >= (-3) && x(i) <= (-2)
            y(i) = 1;
        elseif x(i) >= (-2) && x(i) <= (-1)
            y(i) = (-x(i)-2);
        elseif x(i) >= (-1) && x(i) <= (0)
            y(i) = (x(i));
        elseif x(i) >= (0) && x(i) <= (1)
            y(i) = 2;
        elseif x(i) >= (1) && x(i) <= (2)
            y(i) = -x(i)+2;
        end;
    end;
    plot(x, y);