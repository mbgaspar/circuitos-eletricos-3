
% Filtro passa baixa usando VCVS
K = input('Número de ordem = ');                                                       
fc = input('Valor de F de corte (Hz)= ');
a = input('Valor de a = '); 
b = input('Valor de b = '); 
wc  = 2*pi*fc;
C2 = (10/fc)*1E-6;
C1 = ((a^2)+4*b*(K-1))*C2/(4*b);
R1 = 2/((a*C2+sqrt(((a^2)+4*b*(K-1))*C2*C2-4*b*C1*C2))*wc);
R2 = 1/(b*C1*C2*R1*(wc^2));
R3 = K*(R1+R2)/(K-1);
R4 = K*(R1+R2);
fprintf(' C1 (Farads)= %.9f\n',C1);
fprintf(' C2 (Farads)= %.9f\n',C2);
fprintf(' R1 (Ohm)= %.1f\n',R1);
fprintf(' R2 (Ohm)= %.1f\n',R2);
fprintf(' R3 (Ohm)= %.1f\n',R3);
fprintf(' R3 (Ohm)= %.1f\n',R4);