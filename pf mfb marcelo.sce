k= input('valor de k: ');
f1 = input('Entre com a frequencia de inferior: ');
w1 = 2*%pi*f1;
f2 = input('entre com valor da frequencia superior: ');
w2 = 2*%pi*f2;

//calculos 
B=w2-w1;
disp(B,'B');
w0=sqrt(w1*w2);
disp(w0,'w0');
q=w0/B;
disp(q,'q');
if k<(2*(q^2)) then
f0=(w0/(2*%pi));
disp(f0,'f0');
c=(10/f0)*1E-6;
disp(c,'c');
r1=(q/(w0*c*k));
disp(r1,'r1');
r2=(q/(w0*c*(2*q^2-k)));
disp(r2,'r2');
r3=((2*q)/(w0*c));
disp(r3,'r3');


if k==int(r3/(2*r1)) then
disp(k,'k');
disp('ok');
end
end
