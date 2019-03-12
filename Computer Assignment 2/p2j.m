clc;
clear all;
close all;
%%
t = -10:0.001:10;
x = zeros(size(t));
for i = 1:length(t);
    if 4 - t(i)> 0
        x(i) = 4 - t(i);
    end;
end;
plot(t, x);