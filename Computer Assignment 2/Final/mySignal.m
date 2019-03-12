function mySignal(q, p)
a = (-4 - p)/q;
b = (4 - p)/q;
if(a > b)
    temp = a;
    a = b;
    b = temp;
end;
x = a:0.001:b;
for i = 1:length(x)
        m = p + q*x(i);
        if (m <= -4) || (m >= (3))
            y(i) = 0;
        elseif m >= (-4) && m <= (-2)
            y(i) = 0;
        elseif m >= (-2) && m <= (-1)
            y(i) = 1;
        elseif m >= (-1) && m <= (0)
            y(i) = (-m-1);
        elseif m >= (0) && m <= (1)
            y(i) = (m-1);
        elseif m >= (1) && m <= (2)
            y(i) = 2;
        elseif m >= (2) && m <= (3)
            y(i) = -m+3;
        end;
    end;
    figure;
    plot(x, y);
    xlabel('t index');
    ylabel('values');