function myUnitSignal(p, q)
    t = -10:0.001:10;
    x = zeros(size(t));
    for i = 1:length(t);
        m = p*t(i) + q;
        if m > 0
            x(i) = 1;
        end;
    end;
    figure;
    plot(t, x);
    xlabel('time');
    ylabel('value');
    ylim([-0.5, 1.5]);