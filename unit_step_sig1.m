clc
clear all
close all

%%
tvec = -5:0.001:10;
Nt = length(tvec);
x_n = zeros(1, Nt);
x_n(tvec >= 0) = 1;
plot(tvec, x_n, 'LineWidth', 2);
set(gca, 'Box', 'on', ...,
         'FontSize', 12, ...,
         'FontWeight', 'bold', ...,
         'LineWidth', 1.5, ...,
         'Fontname', 'Helvetica',...,
         'Color', [0.95 0.95 0.95],...,
         'XGrid', 'off',...,
         'YGrid', 'off');
    xlabel('time t');
    ylabel('u(t)', 'interpreter', 'latex');
xlim([-5, 10]);
ylim([-.1, 1.1]);