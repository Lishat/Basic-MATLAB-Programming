function[y] = myConvolution(x, h)
    m = length(x);
    n = length(h);
    L = m + n - 1;
    y = zeros(1, L);
    xe = zeros(1, L);
    he = zeros(1, L);
    xe(1:m) = x;
    he(1:n) = h;
    for i = 1:L;
        y(i) = 0;
        for j = 1:i;
            y(i) = y(i) + he(j)*xe(i - (j - 1));
        end;
    end;
    return;