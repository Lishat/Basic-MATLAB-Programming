clc
clear all
close all
%%
t = -0.5:0.1:0.5;
xt = exp(-abs(t));
T = 2;
for M = 1:100
    for i = 1:M
        k = 1;
        for t = -0.5:0.1:0.5
            graph(k) =  exp(-abs(t))*exp(-j*i*2*pi/T*t);
            k = k + 1;
        end;
        c(i) = 1/T.*trapz(graph);
    end;
    for t = -0.5:0.1:0.5
        s = 0;
        m = int16(t*10 + 6);
        for k = 1:M
            s  = s + c(k)*exp(j*k*2*pi/T*t);
        end;
        d(m) = abs(s)/M*T;
        m = m + 1;
    end;
    err(M) = 1/T*trapz(abs(xt - d).^2);
end;
figure;
plot(err);
xlabel('M value');
ylabel('Error');