clc;
clear all;
close all;
%%
t = -10:0.001:10;
x = zeros(size(t));
for i = 1:length(t);
    if 1 - 2 * t(i) > 0
        x(i) = 1 - 2*t(i);
    end;
end;
plot(t, x);