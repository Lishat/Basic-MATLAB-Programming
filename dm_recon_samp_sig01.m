clc
clear all
close all
%%
N = 100;
a = 0.5;
nvec = 0:N-1;
tvec = nvec/N;
% w = -2*pi:0.01:2*pi;
% xn = zeros(size(nvec));
%  xn = zeros(size(nvec));
 xt = cos(4*tvec);
% xn = sin(nvec);
%  [Xw] = dtft(xn,nvec,w);
figure(1);
% subplot(221)
% plot(tvec,xt,'LineWidth',2);
% set(gca,'Box','off',...,
%         'FontSize',12,...,
%         'FontWeight','bold',...,
%         'LineWidth',1.5,...,
%         'FontName','Helvetica',...,
%         'Color',[0.95 0.95 0.95],...,
%         'XGrid','off',...,
%         'YGrid','off');
%     xlabel('time');
%     ylabel('xa(t)');
%     legend('Original Signal');
%sampling 
nvec2 = tvec(1:20:length(tvec));
for i=1:length(nvec2)
xn(i) = xt(tvec == nvec2(i));
end
subplot(211)
Ln = length(nvec2);
nvec2_inx = 0:(Ln-1);
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
    ylabel('x1(n)');
 legend('Sampled Signal');
subplot(212) 
stairs(nvec2,xn,'LineWidth',2);
set(gca,'Box','off',...,
        'FontSize',12,...,
        'FontWeight','bold',...,
        'LineWidth',1.5,...,
        'FontName','Helvetica',...,
        'Color',[0.95 0.95 0.95],...,
        'XGrid','off',...,
        'YGrid','off');
    xlabel('time');
    ylabel('x1(t)');
 legend('S and H Signal');
%  
%  nvec3 = tvec(1:10:length(tvec));
% for i=1:length(nvec3)
% xn3(i) = xt(tvec == nvec3(i));
% end
% subplot(223)
% Ln = length(nvec3);
% nvec3_inx = 0:(Ln-1);
% stem(nvec3_inx,xn3,'LineWidth',2);
% set(gca,'Box','off',...,
%         'FontSize',12,...,
%         'FontWeight','bold',...,
%         'LineWidth',1.5,...,
%         'FontName','Helvetica',...,
%         'Color',[0.95 0.95 0.95],...,
%         'XGrid','off',...,
%         'YGrid','off');
%     xlabel('index n');
%     ylabel('x2(n)');
%  legend('Sampled Signal 2');
% %--------------------------------------------------------------------------
%  nvec4 = tvec(1:length(tvec));
% for i=1:length(nvec4)
% x4n(i) = xt(tvec == nvec4(i));
% end
% subplot(224)
% Ln = length(nvec4);
% nvec4_inx = 0:(Ln-1);
% plot(nvec4_inx,x4n,'o','LineWidth',2);
% set(gca,'Box','off',...,
%         'FontSize',12,...,
%         'FontWeight','bold',...,
%         'LineWidth',1.5,...,
%         'FontName','Helvetica',...,
%         'Color',[0.95 0.95 0.95],...,
%         'XGrid','off',...,
%         'YGrid','off');
%     xlabel('index n');
%     ylabel('x3(n)');
%  legend('Sampled Signal 3');    