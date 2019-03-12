delf = fvec(2) - fvec(1)
figure;
Xw = Xw/max(Xw);
plot(fvec, (abs(Xw)));
Xw_an = sin(T*2*pi*fvec)./(T*2*pi*fvec);
Xw_an = 