k = input('entre com valor de k: ');
fc = input('Entre com a frequencia de corte: ');
wc = 2*%pi*fc;
a = input('Entre com o valor de a: ');
b = input('Entre com o valor de b: ');
//calculo de C
if k==1 then
    disp("R3 é infinito");
    disp('r4=0');
else
    R3 = (K*R1)/(k-1);
    disp(R3,'R3');
    R4 = K*R1;
    disp(R4,'R4');    
end
c= (10/fc)*1E-6
x=sqrt((a^2)+((8*b)*(k-1)));
R1=(4*b)/((a+x)*(wc*c));
disp(R1,'R1');
R2 =(b)/((wc^2)*(c^2)*(R1));
disp(R2,'R2');


