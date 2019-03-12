
clc
clear all
close all
Fs = 1000;
t = 0:1/Fs:1;
x = sin(2*pi*30*t) + sin(2*pi*60*t);
L = length(x);
NFFT = 2^nextpow2(L); % Next power of 2 from length of y
Y = fft(x,NFFT)/L;
f = Fs/2*linspace(0,1,NFFT/2+1);

% Plot single-sided amplitude spectrum.
plot(f,(abs(Y(1:NFFT/2+1)))) 
title('Single-Sided Amplitude Spectrum of y(t)')
xlabel('Frequency (Hz)')
ylabel('|Y(f)|');
% ylim([-20 80]);
lx = length(x);
y = interp(x,4);
pIx = 30;
I = 4;
figure;
subplot 211
stem(0:pIx,x(1:pIx+1),'filled','markersize',3)
grid on
xlabel 'Sample number',ylabel Original
subplot 212
stem(0:I*pIx,y(1:I*pIx+1),'filled','markersize',3)
grid on
xlabel 'Sample number',ylabel Interpolated


%  I = 4;
%  w1 = pi/I;
%  w2 = pi/2;
 
 N = 31; 
%  input('enter the order of filter');
wc  = pi/I;
% input('enter the cut off frequency');
a = (N-1)/2;
% esp = 0.001;
n = 0:N-1;
for ix = 1:N
    if n(ix) ~= a
hd(ix) = sin(wc*(n(ix)-a))/(pi*(n(ix)-a));
    else
    hd(ix) = wc/pi;
    end
end
% display(hd);
k=0:N-1;
hm = 0.54 - 0.46*(cos((2*pi*k)/(N-1)));
% display(hm);
hn = 0.5 - 0.5*(cos((2*pi*k)/(N-1)));
% display(hn);
hmr = hd.*hm;
% display(hmr);
hnr = hd.*hn;
% display(hnr);
% freqz(hmr);
GroupDelay = a; 
%  Rp = 3;
%  Rs = 30;
%  Wp = w1*Fs;
%  Ws = w2*Fs;
%  [n wn] = buttord(Wp,Ws,Rp,Rs,'s');
%  [b,a] = butter(n,wn,'low','s');
%  [bz,az] = impinvar(b,a,Fs);
xI = upsample(x,I);
figure;
YI = fft(xI,NFFT)/L;
f = Fs/2*linspace(0,1,NFFT/2+1);

% Plot single-sided amplitude spectrum.
plot(f,(abs(YI(1:NFFT/2+1)))) 
title('Single-Sided Amplitude Spectrum of y(t)')
xlabel('Frequency (Hz)')
ylabel('|YI(f)|');
 
% y = filter(hnr,xI);
y =conv(hmr,xI);
figure;
Yo = fft(y,NFFT)/L;
f = Fs/2*linspace(0,1,NFFT/2+1);

% Plot single-sided amplitude spectrum.
plot(f,(abs(Yo(1:NFFT/2+1)))) 
title('Single-Sided Amplitude Spectrum of y(t)')
xlabel('Frequency (Hz)')
ylabel('|Yo(f)|');
figure;
subplot(211)
stem(0:30,x(1:pIx+1),'sk','filled','markersize',3)
subplot(212)
stem(0:I*pIx,y(1+GroupDelay:I*pIx+GroupDelay+1),'ms','filled','markersize',4)
 
legend('Original','Interpolated','Location','south')
xlabel('Sample number')
ylabel('Signal')
 