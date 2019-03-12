function myRampSignal(p, q)
    t = -10:0.001:10;
    x = zeros(size(t));
    for i = 1:length(t)
        m = p*t(i) + q;
        if m > 0
            x(i) = m;
        end;
    end;
    figure;
    plot(t, x);
    xlabel('time');
    ylabel('values');