x = -4:0.001:4;
for i = 1:length(x)
        if (x(i) <= -4) || (x(i) >= (3))
            y(i) = 0;
        elseif x(i) >= (-4) && x(i) <= (-2)
            y(i) = 0;
        elseif x(i) >= (-2) && x(i) <= (-1)
            y(i) = 1;
        elseif x(i) >= (-1) && x(i) <= (0)
            y(i) = (-x(i)-1);
        elseif x(i) >= (0) && x(i) <= (1)
            y(i) = (x(i)-1);
        elseif x(i) >= (1) && x(i) <= (2)
            y(i) = 2;
        elseif x(i) >= (2) && x(i) <= (3)
            y(i) = -x(i)+3;
        end;
    end;
    plot(x, y);