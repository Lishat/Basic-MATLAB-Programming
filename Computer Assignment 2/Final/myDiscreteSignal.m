function myDiscreteSignal(q, p)
a = (-4 - p)/q;
b = (4 - p)/q;
if(a > b)
    temp = a;
    a = b;
    b = temp;
end;
t = a-1:1/abs(q):b+1;
x = zeros(size(t));
for i = 1:length(t);
    m = q*t(i) + p;
    if m == -3
        x(i) = 2;
    elseif m == -2
        x(i) = 1;
    elseif m == -1
        x(i) = -1;
    elseif m == 0
        x(i) = -0.5;
    elseif m == 1
        x(i) = 1;
    elseif m >= 2 && m <= 4
        x(i) = 2;
    end;
end;
figure;
stem(t, x);
xlabel('n index');
ylabel('values');