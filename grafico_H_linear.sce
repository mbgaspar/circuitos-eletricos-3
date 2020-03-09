subplot(211);
w=linspace(0,20,100); // de 1 ate 10000 com 100 pontos  w = w/w0
H = 1 ./ (1+%i*w);
plot2d(w,abs(H))
xlabel("rad/s");
ylabel("modulo de H");
xgrid;
subplot(212);
plot2d(w,(atan(imag(H),real(H)))*180/%pi);
xlabel("rad/s");
ylabel("fase de H");
xgrid
