% Filtro passa alta de 2°ordem usando VCVS                                                     
k = input('valor do ganho (k) =')
f0 = input('Valor de F de corte (Hz)= ');
a = input('Valor de a = '); 
b = input('Valor de b = '); 
wc = 2*pi*f0;
c =(10e-6/f0);
x = sqrt(a^2+((8*b)*(k-1)));
r1 = (4*b/((a+x)*(wc*c)));
r2 = (b/(wc^2*c^2*r1));
r3 = ((k*r1)/(k-1));
r4 = (k*r1);
fprintf(' c (Farads)= %.9f\n',c);
fprintf(' r1 (Ohm)= %.5f\n',r1);
fprintf(' r2 (Ohm)= %.5f\n',r2);
fprintf(' r3 (Ohm)= %.5f\n',r3);
fprintf(' r4 (Ohm)= %.5f\n',r4);
fprintf(' k(ganho) = %.5f\n',k);