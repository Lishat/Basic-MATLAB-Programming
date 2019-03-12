clc;
clear all;
close all;
%%
t = 0:0.001:10;
x = zeros(size(t));
for i = 1:length(t)
    if t(i) - 4 > 0
        x(i) = t(i) - 4;
    end;
end;
plot(t, x);
ylim([-0.5, 6]);