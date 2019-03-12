function[p] = myTabularConvolution(x, h)
    m = length(x);
    n = length(h);
    z = zeros(m+n-1, n);
    for i = 1:(m+n-1)
        k = i;
        j = 1;
        if(k > m)
            r = k - m;
            k = k - r;
            j = j + r;
        end;
        while(k >= 1 && j <= n)
            z(i, j) = x(k);
            k = k - 1;
            j = j + 1;
        end;
    end;
    y = h.';
    z
    y
    p = z*y;
    p = p.';