clc
clear all
close all
disp('Cálculo para wien bridge');
Tipo = input('Informe <1> para saber R <2> para saber C <3> para saber F = ')
;
if Tipo==1
    C = input('Valor de C (uF)= ');
    F = input('Valor de F (Hz)= ');
    R = 1/(2*pi*F*C*10^-6);
    fprintf(' R (Ohm)= %.1f\n',R);
elseif Tipo==2
    R = input('Valor de R (Ohm)= ');
    F = input('Valor de F (Hz) = ');
    C = (1/(2*pi*F*R))*10^-6;
    fprintf(' C (F)= %.12f\n',C);
else 
    C = input('Valor de C (uF) = ');
    R = input('Valor de R (Ohm)= ');
    F = 1/(2*pi*R*C*10^-6);
    fprintf(' F (Hz)= %.1f\n',F);
end  
 
