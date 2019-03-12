clc
clear all
close all

%%
N = 10;
nvec = (-2*N:3*N);
Nt = length(nvec);
x_n = zeros(1, Nt);
x_n(nvec >= 0) = 1;
stem(nvec, x_n, 'LineWidth', 2);
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