function f1(t)
     x = -4+t:0.001:4+t;
    for i = 1:length(x)
        if (x(i) <= (-4+t)) || (x(i) >= (3+t))
            y(i) = 0;
        elseif x(i) >= (-4+t) && x(i) <= (-2+t)
            y(i) = 0;
        elseif x(i) >= (-2+t) && x(i) <= (-1+t)
            y(i) = 1;
        elseif x(i) >= (-1+t) && x(i) <= (0+t)
            y(i) = (-x(i) + (t - 1));
        elseif x(i) >= (0+t) && x(i) <= (1+t)
            y(i) = (x(i) - t - 1);
        elseif x(i) >= (1+t) && x(i) <= (2+t)
            y(i) = 2;
        elseif x(i) >= (2+t) && x(i) <= (3+t)
            y(i) = -x(i)+ t + 3;
        end;
    end;
    plot(x, y);