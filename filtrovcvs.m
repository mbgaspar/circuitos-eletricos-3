    s = input ('1 para fpa e 2 para fpb = ');
    k = input ('valor do ganho (k) =')
    f0 = input ('Valor de F de corte (Hz)= ');
    a = input ('Valor de a = '); 
    b = input ('Valor de b = '); 
    wc = 2*pi*f0;
if s == 1
    c = (10e-6/f0);
    x = sqrt(a^2+((8*b)*(k-1)));
    r1 = (4*b/((a+x)*(wc*c)));
    r2 = (b/(wc^2*c^2*r1));
    r3 = ((k*r1)/(k-1));
    r4 = (k*r1);
    fprintf ('c (Farads)= %.9f\n',c);
elseif s == 2
    c2 = (10/fc)*1E-6;
    c1 = ((a^2)+4*b*(k-1))*c2/(4*b);
    c1 = 2/((a*c2+sqrt(((a^2)+4*b*(k-1))*c2*c2-4*b*c1*c2))*wc);
    r2 = 1/(b*c1*c2*r1*(wc^2));
    r3 = k*(r1+r2)/(k-1);
    r4 = k*(r1+r2);
    fprintf('c1 (Farads)= %.9f\n',c1);
    fprintf('c2 (Farads)= %.9f\n',c2);
else
    fprintf('vai a merda');
end ;
    fprintf(' r1 (Ohm)= %.5f\n',r1);
    fprintf(' r2 (Ohm)= %.5f\n',r2);
    fprintf(' r3 (Ohm)= %.5f\n',r3);
    fprintf(' r4 (Ohm)= %.5f\n',r4);
    fprintf(' k(ganho) = %.5f\n',k);   