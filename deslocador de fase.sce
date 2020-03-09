df = input('valor da defasagem: '); 
df = df*%pi/180;
f0 = input('valo da freq ressonante: '); 
w0 = 2*%pi*f0;

//calculos 

     
    c=(10/f0)*1E-6; 
    disp(c,'c'); 
    b = sqrt(1 + 4*(tan(df/2))^2);
    disp(b,'b');
    if df<0 & df>=-180 then
       
    C = -1 - b;
     disp(C,'C');
    a = C /(2*tan(df/2));
    disp(a,'a');
    
    r1=(1/(2*a*w0*c)); 
    disp(r1,'r1');
     
    r2=(4*r1); 
    disp(r2,'r2');
     
    r3=8*r1; 
    disp(r3,'r3');
    
    r4=8*r1;
    disp(r4,'r4');
    
else 
    C = -1 + b;
    a = C /(2*tan(df/2));
    disp(a,'a');
    
    r1=(1/(2*a*w0*c)); 
    disp(r1,'r1');
     
    r2=(4*r1); 
    disp(r2,'r2');
     
    r3=8*r1; 
    disp(r3,'r3');
    
    r4=8*r1;
    disp(r4,'r4');
    
   
end
