function f2(p)
    x = (-4)*p:0.001:(4)*p;
    for i = 1:length(x)
        if (x(i) <= (-4)*p) || (x(i) >= (3)*p)
            y(i) = 0;
        elseif x(i) >= (-4)*p && x(i) <= (-2)*p
            y(i) = 0;
        elseif x(i) >= (-2)*p && x(i) <= (-1)*p
            y(i) = 1*p;
        elseif x(i) >= (-1)*p && x(i) <= (0)
            y(i) = (-x(i) + (-1)*p);
        elseif x(i) >= (0) && x(i) <= (1)*p
            y(i) = (x(i) - p);
        elseif x(i) >= (1)*p && x(i) <= (2)*p
            y(i) = 2*p;
        elseif x(i) >= (2)*p && x(i) <= (3)*p
            y(i) = -x(i)+ 3*p;
        end;
    end;
    plot(x, y);
