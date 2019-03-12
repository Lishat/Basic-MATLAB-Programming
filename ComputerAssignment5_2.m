clc
clear all
close all
%%
t = -0.5:0.01:0.49;
xt = exp(-abs(t));
M = 10000;
T = 2;
for i = 1:M
    k = 1;
    for t = -0.5:0.01:0.49
        graph(k) =  exp(-abs(t))*exp(-j*i*2*pi/T*t);
        k = k + 1;
    end;
    c(i) = 1/T.*trapz(graph);
end;
for t = -0.5:0.01:0.49
    s = 0;
    m = int16(t*100 + 51);
    for k = 1:M
        s  = s + c(k)*exp(j*k*2*pi/T*t);
    end;
    d(m) = abs(s)/M*T;
    m = m + 1;
end;
t = -0.5:0.01:1.49;
xt(numel(t)) = 0;
d(numel(t)) = 0;
figure;
t = -0.5:0.01:5.49;
xt = repmat(xt, 1, 3);
plot(t, xt, 'Linewidth', 2);
hold on;
d = repmat(d, 1, 3);
plot(t, d, 'Linewidth', 2);
xlabel('t');
ylabel('x[t]');
legend('Original','Reconstructed');
xlim([-0.5, 4.5]);
figure;
plot(real(c));
xlabel('index');
ylabel('Real part');
figure;
plot(imag(c));
xlabel('index');
ylabel('Imaginary part');