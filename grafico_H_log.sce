subplot(211);
w=logspace(-1,2,100); // de 10^-1 ate 10^2 com 100 pontos  w = w/w0
H = 1 ./ (1+%i*w);
plot2d(w,abs(H),logflag="ln");
xlabel("rad/s");
ylabel("modulo de H");
xgrid;
subplot(212);
plot2d(w,(atan(imag(H),real(H)))*180/%pi,logflag="ln");
xlabel("rad/s");
ylabel("fase de H");
xgrid
