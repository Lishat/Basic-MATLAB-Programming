clc
clear all
close all
%%
N = 10;
a = 0.5;
nvec = -N:N;
tvec = nvec/N;
% w = -2*pi:0.01:2*pi;
% xn = zeros(size(nvec));
%  xn = zeros(size(nvec));
 xt = cos(4*tvec);
% xn = sin(nvec);
%  [Xw] = dtft(xn,nvec,w);
figure(1);
subplot(211)
plot(tvec,xt,'LineWidth',2);
set(gca,'Box','off',...,
        'FontSize',12,...,
        'FontWeight','bold',...,
        'LineWidth',1.5,...,
        'FontName','Helvetica',...,
        'Color',[0.95 0.95 0.95],...,
        'XGrid','off',...,
        'YGrid','off');
    xlabel('time');
    ylabel('xa(t)');
    legend('Analog Signal');
%sampling 
nvec2 = tvec(1:2:length(tvec));
for i=1:length(nvec2)
xn(i) = xt(tvec == nvec2(i));
end
subplot(212)
Ln = length(nvec2);
nvec2_inx = -(Ln-1)/2:(Ln-1)/2;
stem(nvec2_inx,xn,'LineWidth',2);
set(gca,'Box','off',...,
        'FontSize',12,...,
        'FontWeight','bold',...,
        'LineWidth',1.5,...,
        'FontName','Helvetica',...,
        'Color',[0.95 0.95 0.95],...,
        'XGrid','off',...,
        'YGrid','off');
    xlabel('index n');
    ylabel('x(n)');
 legend('Sampled Signal')
    