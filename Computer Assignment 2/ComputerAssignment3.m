clc
clear all
close all
%%
T = 0.5;
Fs = 20;
t = -2*T:1/Fs:2*T;
x = zeros(size(t));
for i = 1:length(t);
    p = t(i);
    if p <= 0 && p >= -T
        x(i) = p + T;
    elseif p > 0 && p <= T
        x(i) = T - p;
    end;
end;
figure;
plot(t, x);
xlabel('Time index');
ylabel('Values');
xlim([-T-T/2,T+T/2]);
ylim([-T/2, T+T/2]);
nfft = 2^(nextpow2(length(x)));
y = fft(x, nfft);
fvec = Fs/2*linspace(-T, T, nfft);
Xw = fftshift(y);
Xw = Xw/max(Xw);
figure;
plot(fvec, abs(Xw));
xlabel('fvec');
ylabel('Xw');
ylim([-0.5,1]);
x_an = (sin((T)*2*pi*fvec)./((T)*2*pi*fvec)).^2;
x_an(fvec==0) = 1;
figure;
plot(fvec, abs(x_an));
xlabel('fvec');
ylabel('x_a_n');
ylim([-0.5,1]);
Energy = trapz(abs(Xw).^2);
init_energy = 0;
start = nfft/2;
stop = nfft/2+1;
fmax = 0;
while init_energy/Energy <= 0.99
    init_energy = sum(abs(Xw(start:stop)).^2);
    fmax = fmax + 1;
    start = start - 1;
    stop = stop + 1;
    Egvec(fmax) = init_energy/Energy;
end;
freRange = 1:fmax;
disp(start);
disp(stop);
bandwidth = fvec(stop) - fvec(start);
disp(bandwidth);
disp(init_energy);
figure;
plot(freRange, Egvec), grid;
xlabel('fmax Index');
ylabel('Energy %');
Energy2 = trapz(abs(x_an).^2);
init_energy2 = 0;
start2 = nfft/2;
stop2 = nfft/2+1;
fmax2 = 0;
while init_energy2/Energy2 <= 0.99
    init_energy2 = trapz(abs(x_an(start2:stop2)).^2);
    fmax2 = fmax2 + 1;
    start2 = start2 - 1;
    stop2 = stop2 + 1;
    Egvec2(fmax2) = init_energy2/Energy2;
end;
freRange2 = 1:fmax2;
disp(start2);
disp(stop2);
bandwidth2 = fvec(stop2) - fvec(start2);
disp(bandwidth2);
disp(init_energy2);
figure;
plot(freRange, Egvec2), grid;
xlabel('fmax Index');
ylabel('Energy %');
disp(fvec(start2));
disp(fvec(stop2));