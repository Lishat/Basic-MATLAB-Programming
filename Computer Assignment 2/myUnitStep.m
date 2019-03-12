function[x, y] = myUnitStep(t, p)
    if t >= 0
        x = t : t + 10;
        for i = 1:length(x)
            y(i) = 1;
        end;
        figure;
        plot(x, y);
        xlim([0, t+10]);
    else
        x = t-10:t;
        for i = 1:length(x)
            y(i) = 1;
        end;
        figure;
        plot(x, y);
        xlim([t - 10 , t]);
    end;