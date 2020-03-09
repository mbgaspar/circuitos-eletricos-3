%-------------------------------------------------------%
%------------------Calculo de filtros-------------------%
%-------------Marcelo Brancalhao Gaspar-----------------%
%-------------------------------------------------------%

clc
clear all
close all
disp('Circuitos osciladores com impedancia');
Circuito = input ('Informe:\n <1> Para filtro passivo\n <2> Para filtros ativo\n = ');      % Escolha do filtro
   if Circuito==1
       
       % Filtro passivo
       
        disp('Escolha 1: Filtro passivo');                                        
        Valor = input('Informe\n <1> Para passa baixa\n <2> Para passa alta \n <3> Para passa faixa\n <4> Para passa tudo\n = ');

        log = input ('Informe:\n <1> Para escala logaritmica\n <2> Para escala decimal\n = ');
        if log == 1
                % Escala logaritmica 
                
                % Calculo passa baixa
        
            if Valor==1
                
                R = input('Valor de R (Ohm) = ');
                C = input('Valor de C (F) = '); 
                subplot(211)
                f = logspace (1,5,10000);
                w = 2*pi*f;
                wc = 1/(R*C);
                H = 1./(1+1i*w/wc);
                traco1=semilogx(f,20*log10(abs(H)),'k');
                set(traco1,'LineWidth',1.5)
                xlabel('Frequência (Hz)','FontSize',16);
                ylabel('Magnitude','FontSize',16);
                title('Magnitude da resposta em frequência','FontSize',18)
                grid

                subplot(212);
                traco2=semilogx(f,angle(H)*180/pi,'k');
                set(traco2,'LineWidth',1.5)
                xlabel('Frequência (Hz)','FontSize',16);
                ylabel('Fase(graus)','FontSize',16);
                title('Magnitude da resposta em frequência','FontSize',18)
                grid
                
                % Calculo passa alta
                
            elseif Valor==2                         
              
                R = input('Valor de R (Ohm) = ');
                C = input('Valor de C (F) = ');
                subplot(211)
                f = logspace (1,5,10000);
                w = 2*pi*f;
                wc = 1/(R*C);
                H = 1./(1-1j*(wc./w));
                traco1=semilogx(f,20*log10(abs(H)),'k');
                set(traco1,'LineWidth',1.5)
                xlabel('Frequência (Hz)','FontSize',16);
                ylabel('Magnitude','FontSize',16);
                title('Magnitude da resposta em frequência','FontSize',18)
                grid

                subplot(212);
                traco2=semilogx(f,angle(H)*180/pi,'k');
                set(traco2,'LineWidth',1.5)
                xlabel('Frequência (Hz)','FontSize',16);
                ylabel('Fase(graus)','FontSize',16);
                title('Magnitude da resposta em frequência','FontSize',18)
                grid
                
            elseif Valor == 3 
               
                % Calculo passa faixa
                                
                L = input('Valor de L (H) = ');
                C = input('Valor de C (F) = '); 
                subplot(211)
                f = logspace (1,5,1000);
                w = 2*pi*f;
                w0 = 1/(sqrt(L*C));
                H = 1./(1+1j*15*(w./w0-w0./w));
                traco1=semilogx(f,20*log10(abs(H)),'k');
                set(traco1,'LineWidth',1.5)
                xlabel('Frequência (Hz)','FontSize',16);
                ylabel('Magnitude','FontSize',16);
                title('Magnitude da resposta em frequência','FontSize',18)
                grid

                subplot(212);
                traco2=semilogx(f,angle(H)*180/pi,'k');
                set(traco2,'LineWidth',1.5)
                xlabel('Frequência (Hz)','FontSize',16);
                ylabel('Fase(graus)','FontSize',16);
                title('Magnitude da resposta em frequência','FontSize',18)
                grid
              
                % =================================================================================================================================     
                % ===========================================================Calculo pasa tudo===================================================== 
                % =================================================================================================================================
                
                
            else
            end
        else
            % Escala decimal
            
            % Calculo passa baixa
            
            if Valor==1
                R = input('Valor de R (Ohm) = ');
                C = input('Valor de C (F) = '); 
                subplot(211)
                f = logspace (1,4,1000);
                w = 2*pi*f;
                wc = 1/(R*C);
                H = 1./(1+1i*w/wc);
                traco1=plot(f,abs(H),'k');
                set(traco1,'LineWidth',1.5)
                xlabel('Frequência (Hz)','FontSize',16);
                ylabel('Magnitude','FontSize',16);
                title('Magnitude da resposta em frequência','FontSize',18)
                grid

                subplot(212);
                traco2=plot(f,angle(H)*180/pi,'k');
                set(traco2,'LineWidth',1.5)
                xlabel('Frequência (Hz)','FontSize',16);
                ylabel('Fase(graus)','FontSize',16);
                title('Magnitude da resposta em frequência','FontSize',18)
                grid
                
                % Calculo passa alta
                
            elseif Valor==2                         
              
                R = input('Valor de R (Ohm) = ');
                C = input('Valor de C (F) = ');
                subplot(211)
                f = logspace (1,5,1000);
                w = 2*pi*f;
                wc = 1/(R*C);
                H = 1./(1-1j*(wc./w));
                traco1=plot(f,abs(H),'k');
                set(traco1,'LineWidth',1.5)
                xlabel('Frequência (Hz)','FontSize',16);
                ylabel('Magnitude','FontSize',16);
                title('Magnitude da resposta em frequência','FontSize',18)
                grid

                subplot(212);
                traco2=plot(f,angle(H)*180/pi,'k');
                set(traco2,'LineWidth',1.5)
                xlabel('Frequência (Hz)','FontSize',16);
                ylabel('Fase(graus)','FontSize',16);
                title('Magnitude da resposta em frequência','FontSize',18)
                grid
                
                % Calculo passa faixa
                
            elseif Valor == 3 
                
                L = input('Valor de L (H) = ');
                C = input('Valor de C (F) = ');
                subplot(211)
                f = logspace (1,5,1000);
                w = 2*pi*f;
                w0 = 1/(sqrt(L*C));
                H = 1./(1+1j*15*(w./w0-w0./w));
                traco1=plot(f,abs(H),'k');
                set(traco1,'LineWidth',1.5)
                xlabel('Frequência (Hz)','FontSize',16);
                ylabel('Magnitude','FontSize',16);
                title('Magnitude da resposta em frequência','FontSize',18)
                grid

                subplot(212);
                traco2=plot(f,angle(H)*180/pi,'k');
                set(traco2,'LineWidth',1.5)
                xlabel('Frequência (Hz)','FontSize',16);
                ylabel('Fase(graus)','FontSize',16);
                title('Magnitude da resposta em frequência','FontSize',18)
                grid
                     
                % =================================================================================================================================     
                % ===========================================================Calculo pasa tudo===================================================== 
                % =================================================================================================================================
                
            else
                
                
                
            end
        end
   elseif Circuito==2
       
       % Filtros ativos
       
        disp('Escolha 2: Filtros Ativos');                                                    
        Valor = input('Informe\n <1> Passa baixa VCVS\n <2> Passa alta VCVS\n <3> Rejeita faixa VCVS\n <4> passa faixa MFB\n <5> passa tudo MFB\n= ');
        
                % Calculo passa baixa VCVS
        
            if Valor==1 
                k = input('Valor de ganho = ');                                                       
                fc = input('Valor de F de corte (Hz)= ');
                a = input('Valor de a = '); 
                b = input('Valor de b = '); 
                wc  = 2*pi*fc;
                C2 = (10/fc)*1E-6;
                C1 = ((a^2)+4*b*(k-1))*C2/(4*b);
                R1 = 2/((a*C2+sqrt(((a^2)+4*b*(k-1))*C2*C2-4*b*C1*C2))*wc);
                R2 = 1/(b*C1*C2*R1*(wc^2));
                R3 = k*(R1+R2)/(k-1);
                R4 = k*(R1+R2);
                fprintf(' C1 (F)= %.9f\n',C1);
                fprintf(' C2 (F)= %.9f\n',C2);
                fprintf(' R1 (Ohm)= %.1f\n',R1);
                fprintf(' R2 (Ohm)= %.1f\n',R2);
                fprintf(' R3 (Ohm)= %.1f\n',R3);
                fprintf(' R3 (Ohm)= %.1f\n',R4);

                % Calculo passa alta VCVS 
                
            elseif Valor==2
                k = input('Valor do Ganho = ');                                                       
                fc = input('Valor de F de corte (Hz)= ');
                a = input('Valor de a = '); 
                b = input('Valor de b = '); 
                wc  = 2*pi*fc;
                c = (10/fc)*1e-6;
                R1 = 4*b/((a+sqrt((a^2)+(8*b*(k-1))))*wc*c);
                R2 = b/(wc^2*c^2*R1);
                R3 = (k*R1)/(k-1);
                R4 = k*R1;
                fprintf(' C (F)= %g\n',c);
                fprintf(' R1 (Ohm)= %.1f\n',R1);
                fprintf(' R2 (Ohm)= %.1f\n',R2);
                fprintf(' R3 (Ohm)= %.1f\n',R3);
                fprintf(' R4 (Ohm)= %.1f\n',R4);
                
                % =================================================================================================================================     
                % ===========================================================Rejeita faixa VCVS==================================================== 
                % =================================================================================================================================
                
                
            elseif Valor == 3 

                % Calculo passa faixa MFB
                
            elseif Valor == 4 
                fci = input('Valor de F de corte inferior (Hz)= ');
                fcs = input('Valor de F de corte superior (Hz)= ');
                fo  = sqrt(fcs*fci);
                Qo = (fo)/(fcs-fci);
                Wo = (2*pi*fo);
                c = (10/fo)*1e-6;

                k = input('Valor do Ganho = '); 
                while (k > (2*Qo^2))
                    k = input('Valor do Ganho = '); 
                end

                R1 = Qo/(Wo*c*k);
                R2 = Qo/(Wo*c*(2*(Qo^2-k)));
                R3 = (2*Qo)/(Wo*c);
                p = R3/(2*R1);

                fprintf(' C (F)= %g\n',c);
                fprintf(' R1 (Ohm)= %.1f\n',R1);
                fprintf(' R2 (Ohm)= %.1f\n',R2);
                fprintf(' R3 (Ohm)= %.1f\n',R3);
                fprintf(' Qo (Ohm)= %.1f\n',Qo);
                fprintf(' Prova Real: %.1f = %.1f\n',k,p);
              
            else
                
                % Calculo passa tudo MFB
                
                fo  = input('Valor de F (Hz) = ');
                Wo = (2*pi*fo);

                i=1;
                while (i==1)
                    tetag = input('Valor de o(º) a se defasado = ');
                    teta = (tetag/180)*pi;

                    if ((180 > tetag) && (0 < tetag))
                        a = (-1+sqrt(1+4*(tan(teta/2))^2))/(2*tan(teta/2));
                        i=0;
                    elseif ((-180 < tetag) && (0 > tetag))
                        a = (-1-sqrt(1+4*(tan(teta/2))^2))/(2*tan(teta/2));
                        i=0;
                    else
                        fprintf('\n POE O ANGULO CERTO SEU BURRO');
                        i=1;
                    end
                end

                c = (10/fo)*1e-6;
                R1 = 1/(2*a*Wo*c);
                R2 = 4*R1;
                R3 = 8*R1;
                R4 = 8*R1;

                fprintf('\n C (F)= %.9f\n',c);
                fprintf(' R1 (Ohm)= %.1f\n',R1);
                fprintf(' R2 (Ohm)= %.1f\n',R2);
                fprintf(' R3 (Ohm)= %.1f\n',R3);
                fprintf(' R4 (Ohm)= %.1f\n',R4);
                
            end
   end
   
   %Pergunta para repetir
   
while(1) 
       Resposta = input ('Repetir calculo? Sim <1> Não <2>');
          if Resposta==1
clc
clear all
close all
disp('Circuitos osciladores com impedancia');
Circuito = input ('Informe:\n <1> Para filtro passivo\n <2> Para filtros ativo\n = ');      % Escolha do filtro
   if Circuito==1
       
       % Filtro passivo
       
        disp('Escolha 1: Filtro passivo');                                        
        Valor = input('Informe\n <1> Para passa baixa\n <2> Para passa alta \n <3> Para passa faixa\n <4> Para passa tudo\n = ');

        log = input ('Informe:\n <1> Para escala logaritmica\n <2> Para escala decimal\n = ');
        if log == 1
                % Escala logaritmica 
                
                % Calculo passa baixa
        
            if Valor==1
                
                R = input('Valor de R (Ohm) = ');
                C = input('Valor de C (F) = '); 
                subplot(211)
                f = logspace (1,5,10000);
                w = 2*pi*f;
                wc = 1/(R*C);
                H = 1./(1+1i*w/wc);
                traco1=semilogx(f,20*log10(abs(H)),'k');
                set(traco1,'LineWidth',1.5)
                xlabel('Frequência (Hz)','FontSize',16);
                ylabel('Magnitude','FontSize',16);
                title('Magnitude da resposta em frequência','FontSize',18)
                grid

                subplot(212);
                traco2=semilogx(f,angle(H)*180/pi,'k');
                set(traco2,'LineWidth',1.5)
                xlabel('Frequência (Hz)','FontSize',16);
                ylabel('Fase(graus)','FontSize',16);
                title('Magnitude da resposta em frequência','FontSize',18)
                grid
                
                % Calculo passa alta
                
            elseif Valor==2                         
              
                R = input('Valor de R (Ohm) = ');
                C = input('Valor de C (F) = ');
                subplot(211)
                f = logspace (1,5,10000);
                w = 2*pi*f;
                wc = 1/(R*C);
                H = 1./(1-1j*(wc./w));
                traco1=semilogx(f,20*log10(abs(H)),'k');
                set(traco1,'LineWidth',1.5)
                xlabel('Frequência (Hz)','FontSize',16);
                ylabel('Magnitude','FontSize',16);
                title('Magnitude da resposta em frequência','FontSize',18)
                grid

                subplot(212);
                traco2=semilogx(f,angle(H)*180/pi,'k');
                set(traco2,'LineWidth',1.5)
                xlabel('Frequência (Hz)','FontSize',16);
                ylabel('Fase(graus)','FontSize',16);
                title('Magnitude da resposta em frequência','FontSize',18)
                grid
                
            elseif Valor == 3 
               
                % Calculo passa faixa
                                
                L = input('Valor de L (H) = ');
                C = input('Valor de C (F) = '); 
                subplot(211)
                f = logspace (1,5,1000);
                w = 2*pi*f;
                w0 = 1/(sqrt(L*C));
                H = 1./(1+1j*15*(w./w0-w0./w));
                traco1=semilogx(f,20*log10(abs(H)),'k');
                set(traco1,'LineWidth',1.5)
                xlabel('Frequência (Hz)','FontSize',16);
                ylabel('Magnitude','FontSize',16);
                title('Magnitude da resposta em frequência','FontSize',18)
                grid

                subplot(212);
                traco2=semilogx(f,angle(H)*180/pi,'k');
                set(traco2,'LineWidth',1.5)
                xlabel('Frequência (Hz)','FontSize',16);
                ylabel('Fase(graus)','FontSize',16);
                title('Magnitude da resposta em frequência','FontSize',18)
                grid
              
                % =================================================================================================================================     
                % ===========================================================Calculo pasa tudo===================================================== 
                % =================================================================================================================================
                
                
            else
            end
        else
            % Escala decimal
            
            % Calculo passa baixa
            
            if Valor==1
                R = input('Valor de R (Ohm) = ');
                C = input('Valor de C (F) = '); 
                subplot(211)
                f = logspace (1,4,1000);
                w = 2*pi*f;
                wc = 1/(R*C);
                H = 1./(1+1i*w/wc);
                traco1=plot(f,abs(H),'k');
                set(traco1,'LineWidth',1.5)
                xlabel('Frequência (Hz)','FontSize',16);
                ylabel('Magnitude','FontSize',16);
                title('Magnitude da resposta em frequência','FontSize',18)
                grid

                subplot(212);
                traco2=plot(f,angle(H)*180/pi,'k');
                set(traco2,'LineWidth',1.5)
                xlabel('Frequência (Hz)','FontSize',16);
                ylabel('Fase(graus)','FontSize',16);
                title('Magnitude da resposta em frequência','FontSize',18)
                grid
                
                % Calculo passa alta
                
            elseif Valor==2                         
              
                R = input('Valor de R (Ohm) = ');
                C = input('Valor de C (F) = ');
                subplot(211)
                f = logspace (1,5,1000);
                w = 2*pi*f;
                wc = 1/(R*C);
                H = 1./(1-1j*(wc./w));
                traco1=plot(f,abs(H),'k');
                set(traco1,'LineWidth',1.5)
                xlabel('Frequência (Hz)','FontSize',16);
                ylabel('Magnitude','FontSize',16);
                title('Magnitude da resposta em frequência','FontSize',18)
                grid

                subplot(212);
                traco2=plot(f,angle(H)*180/pi,'k');
                set(traco2,'LineWidth',1.5)
                xlabel('Frequência (Hz)','FontSize',16);
                ylabel('Fase(graus)','FontSize',16);
                title('Magnitude da resposta em frequência','FontSize',18)
                grid
                
                % Calculo passa faixa
                
            elseif Valor == 3 
                
                L = input('Valor de L (H) = ');
                C = input('Valor de C (F) = ');
                subplot(211)
                f = logspace (1,5,1000);
                w = 2*pi*f;
                w0 = 1/(sqrt(L*C));
                H = 1./(1+1j*15*(w./w0-w0./w));
                traco1=plot(f,abs(H),'k');
                set(traco1,'LineWidth',1.5)
                xlabel('Frequência (Hz)','FontSize',16);
                ylabel('Magnitude','FontSize',16);
                title('Magnitude da resposta em frequência','FontSize',18)
                grid

                subplot(212);
                traco2=plot(f,angle(H)*180/pi,'k');
                set(traco2,'LineWidth',1.5)
                xlabel('Frequência (Hz)','FontSize',16);
                ylabel('Fase(graus)','FontSize',16);
                title('Magnitude da resposta em frequência','FontSize',18)
                grid
                     
                % =================================================================================================================================     
                % ===========================================================Calculo pasa tudo===================================================== 
                % =================================================================================================================================
                
            else
                
                
                
            end
        end
   elseif Circuito==2
       
       % Filtros ativos
       
        disp('Escolha 2: Filtros Ativos');                                                    
        Valor = input('Informe\n <1> Passa baixa VCVS\n <2> Passa alta VCVS\n <3> Rejeita faixa VCVS\n <4> passa faixa MFB\n <5> passa tudo MFB\n= ');
        
                % Calculo passa baixa VCVS
        
            if Valor==1 
                k = input('Valor de ganho = ');                                                       
                fc = input('Valor de F de corte (Hz)= ');
                a = input('Valor de a = '); 
                b = input('Valor de b = '); 
                wc  = 2*pi*fc;
                C2 = (10/fc)*1E-6;
                C1 = ((a^2)+4*b*(k-1))*C2/(4*b);
                R1 = 2/((a*C2+sqrt(((a^2)+4*b*(k-1))*C2*C2-4*b*C1*C2))*wc);
                R2 = 1/(b*C1*C2*R1*(wc^2));
                R3 = k*(R1+R2)/(k-1);
                R4 = k*(R1+R2);
                fprintf(' C1 (F)= %.9f\n',C1);
                fprintf(' C2 (F)= %.9f\n',C2);
                fprintf(' R1 (Ohm)= %.1f\n',R1);
                fprintf(' R2 (Ohm)= %.1f\n',R2);
                fprintf(' R3 (Ohm)= %.1f\n',R3);
                fprintf(' R3 (Ohm)= %.1f\n',R4);

                % Calculo passa alta VCVS 
                
            elseif Valor==2
                k = input('Valor do Ganho = ');                                                       
                fc = input('Valor de F de corte (Hz)= ');
                a = input('Valor de a = '); 
                b = input('Valor de b = '); 
                wc  = 2*pi*fc;
                c = (10/fc)*1e-6;
                R1 = 4*b/((a+sqrt((a^2)+(8*b*(k-1))))*wc*c);
                R2 = b/(wc^2*c^2*R1);
                R3 = k*(k*R1)/(k-1);
                R4 = k*R1;
                fprintf(' C (F)= %g\n',c);
                fprintf(' R1 (Ohm)= %.1f\n',R1);
                fprintf(' R2 (Ohm)= %.1f\n',R2);
                fprintf(' R3 (Ohm)= %.1f\n',R3);
                fprintf(' R4 (Ohm)= %.1f\n',R4);
                
                % =================================================================================================================================     
                % ===========================================================Rejeita faixa VCVS==================================================== 
                % =================================================================================================================================
                
                
            elseif Valor == 3 

                % Calculo passa faixa MFB
                
            elseif Valor == 4 
                fci = input('Valor de F de corte inferior (Hz)= ');
                fcs = input('Valor de F de corte superior (Hz)= ');
                fo  = sqrt(fcs*fci);
                Qo = (fo)/(fcs-fci);
                Wo = (2*pi*fo);
                c = (10/fo)*1e-6;

                k = input('Valor do Ganho = '); 
                while (k > (2*Qo^2))
                    k = input('Valor do Ganho = '); 
                end

                R1 = Qo/(Wo*c*k);
                R2 = Qo/(Wo*c*(2*(Qo^2-k)));
                R3 = (2*Qo)/(Wo*c);
                p = R3/(2*R1);

                fprintf(' C (F)= %g\n',c);
                fprintf(' R1 (Ohm)= %.1f\n',R1);
                fprintf(' R2 (Ohm)= %.1f\n',R2);
                fprintf(' R3 (Ohm)= %.1f\n',R3);
                fprintf(' Qo (Ohm)= %.1f\n',Qo);
                fprintf(' Prova Real: %.1f = %.1f\n',k,p);
              
            else
                
                % Calculo passa tudo MFB
                
                fo  = input('Valor de F (Hz) = ');
                Wo = (2*pi*fo);

                i=1;
                while (i==1)
                    tetag = input('Valor de o(º) a se defasado = ');
                    teta = (tetag/180)*pi;

                    if ((180 > tetag) && (0 < tetag))
                        a = (-1+sqrt(1+4*(tan(teta/2))^2))/(2*tan(teta/2));
                        i=0;
                    elseif ((-180 < tetag) && (0 > tetag))
                        a = (-1-sqrt(1+4*(tan(teta/2))^2))/(2*tan(teta/2));
                        i=0;
                    else
                        fprintf('\n POE O ANGULO CERTO SEU BURRO');
                        i=1;
                    end
                end

                c = (10/fo)*1e-6;
                R1 = 1/(2*a*Wo*c);
                R2 = 4*R1;
                R3 = 8*R1;
                R4 = 8*R1;

                fprintf('\n C (F)= %.9f\n',c);
                fprintf(' R1 (Ohm)= %.1f\n',R1);
                fprintf(' R2 (Ohm)= %.1f\n',R2);
                fprintf(' R3 (Ohm)= %.1f\n',R3);
                fprintf(' R4 (Ohm)= %.1f\n',R4);
                
            end
   end
          else 
              break;
          end
          
end

%-------------------------------------------------------%
%------------------Calculo de filtros-------------------%
%-------------Marcelo Brancalhao Gaspar-----------------%
%-------------------------------------------------------%
          