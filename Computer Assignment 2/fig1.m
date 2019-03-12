function fig1(t, p)
    x = (-4+t)*p:0.001:(4+t)*p;
    for i = 1:length(x)
        if (x(i) <= (-4+t)*p) || (x(i) >= (3+t)*p)
            y(i) = 0;
        elseif x(i) >= (-4+t)*p && x(i) <= (-2+t)*p
            y(i) = 0;
        elseif x(i) >= (-2+t)*p && x(i) <= (-1+t)*p
            y(i) = 1*p;
        elseif x(i) >= (-1+t)*p && x(i) <= (0+t)*p
            y(i) = (-x(i) + (t - 1)*p);
        elseif x(i) >= (0+t)*p && x(i) <= (1+t)*p
            y(i) = (x(i) - t*p - 1*p);
        elseif x(i) >= (1+t)*p && x(i) <= (2+t)*p
            y(i) = 2*p;
        elseif x(i) >= (2+t)*p && x(i) <= (3+t)*p
            y(i) = -x(i)+ t*p + 3*p;
        end;
    end;
    plot(x, y);

    