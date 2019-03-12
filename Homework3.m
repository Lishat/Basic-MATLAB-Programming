clc;
clear all;
close all;
%%
x1 = [0,0,0,0,-1,1,-1,1,-1,1];
h1 = [0,0,0,0,(-1/2)^0, (-1/2)^1, (-1/2)^2, (-1/2)^3, (-1/2)^4, 0];
h2 = [1,1,1,1,0,0,0,0,0,0];
xaxis1 = -4:1:5;
stem(xaxis1,x1);
set(gca,'Box','off',...,
        'FontSize',12,...,
        'FontWeight','bold',...,
        'LineWidth',1.5,...,
        'FontName','Helvetica',...,
        'Color',[0.95 0.95 0.95],...,
        'XGrid','off',...,
        'YGrid','off');
    xlabel('n');
    ylabel('x[n]');
    legend('Analog Signal');
figure();
stem(xaxis1,h1);
set(gca,'Box','off',...,
        'FontSize',12,...,
        'FontWeight','bold',...,
        'LineWidth',1.5,...,
        'FontName','Helvetica',...,
        'Color',[0.95 0.95 0.95],...,
        'XGrid','off',...,
        'YGrid','off');
    xlabel('n');
    ylabel('h1[n]');
    legend('Convolution Signal');
figure();
stem(xaxis1,h2);
set(gca,'Box','off',...,
        'FontSize',12,...,
        'FontWeight','bold',...,
        'LineWidth',1.5,...,
        'FontName','Helvetica',...,
        'Color',[0.95 0.95 0.95],...,
        'XGrid','off',...,
        'YGrid','off');
    xlabel('n');
    ylabel('h2[n]');
    legend('Convolution Signal');
resultXaxis = -4:1:23;
w = myConvolution(x1, h1);
wAxis = -8:1:10;
figure();
stem(wAxis, w);
set(gca,'Box','off',...,
        'FontSize',12,...,
        'FontWeight','bold',...,
        'LineWidth',1.5,...,
        'FontName','Helvetica',...,
        'Color',[0.95 0.95 0.95],...,
        'XGrid','off',...,
        'YGrid','off');
    xlabel('n');
    ylabel('w[n]');
    legend('x[n]*h1[n]');
result1 = myConvolution(w, h2);
g = myConvolution(h1, h2);
gAxis = -4:1:14;
figure();
stem(gAxis, g);
set(gca,'Box','off',...,
        'FontSize',12,...,
        'FontWeight','bold',...,
        'LineWidth',1.5,...,
        'FontName','Helvetica',...,
        'Color',[0.95 0.95 0.95],...,
        'XGrid','off',...,
        'YGrid','off');
    xlabel('n');
    ylabel('g[n]');
    legend('h1[n]*h2[n]');
result2 = myConvolution(x1, g);
figure();
stem(resultXaxis, result1, '+');
hold on;
stem(resultXaxis, result2);
set(gca,'Box','off',...,
        'FontSize',12,...,
        'FontWeight','bold',...,
        'LineWidth',1.5,...,
        'FontName','Helvetica',...,
        'Color',[0.95 0.95 0.95],...,
        'XGrid','off',...,
        'YGrid','off');
    xlabel('n');
    ylabel('y[n]');
    legend('y1[n]','y2[n]');