clc;
clear all;
close all;
%%
t = -10:0.001:10;
x = zeros(size(t));
for i = 1:length(t);
    if 3 - t(i) > 0
        x(i) = 1;
    end;
end;
plot(t, x);
ylim([-0.5, 1.5]);