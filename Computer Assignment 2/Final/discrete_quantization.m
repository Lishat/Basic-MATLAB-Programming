clc
clear all
close all
%%
N = 5;
Fs = 5;
T = 1/Fs;
n = 0:0.1:N*2*pi;
x = sin(n);
figure;
subplot(3, 1, 1);
stem(n, x, 'LineWidth', 2);
set(gca, 'Box', 'on', ...,
         'FontSize', 12, ...,
         'FontWeight', 'bold', ...,
         'LineWidth', 1.5, ...,
         'Color', [0.95 0.95 0.95], ...,
         'XGrid', 'off', ...,
         'YGrid', 'off');
     xlabel('index n');
     ylabel('sine');
subplot(3, 1, 2);
stem(n, 0.25*round(x/0.25), 'LineWidth', 2);
set(gca, 'Box', 'on', ...,
         'FontSize', 12, ...,
         'FontWeight', 'bold', ...,
         'LineWidth', 1.5, ...,
         'Color', [0.95 0.95 0.95], ...,
         'XGrid', 'off', ...,
         'YGrid', 'off');
     xlabel('index n');
     ylabel('sine');
subplot(3, 1, 3);
stem(n, 0.25*round(x/0.25) - x, 'LineWidth', 2);
set(gca, 'Box', 'on', ...,
         'FontSize', 12, ...,
         'FontWeight', 'bold', ...,
         'LineWidth', 1.5, ...,
         'Color', [0.95 0.95 0.95], ...,
         'XGrid', 'off', ...,
         'YGrid', 'off');
     xlabel('index n');
     ylabel('quantization error');