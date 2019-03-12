clc;
clear all;
close all;
%%
t = -4:1:6;
x = zeros(size(t));
for i = 1:length(t);
    p = t(i)-1;
    if p == -3
        x(i) = 2;
    elseif p == -2
        x(i) = 1;
    elseif p == -1
        x(i) = -1;
    elseif p == 0
        x(i) = -0.5;
    elseif p == 1
        x(i) = 1;
    elseif p >= 2 && p <= 4
        x(i) = 2;
    end;
end;
stem(t, x);