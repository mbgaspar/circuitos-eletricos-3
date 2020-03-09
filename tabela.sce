printf("w/wo\t|H|\tphase\n");
for f=0:0.2:1       // for(f=0;f<=1;f=f+0.2)
    H = 1 / (1 + %i*f); // relacao w/wo
    printf("%.2f\t%.2f\t%.2f\n",f,abs(H), (atan(imag(H),real(H)))*180/%pi);
end
for f=2:2:10
    H = 1 / (1 + %i*f); // relacao w/wo
    printf("%.2f\t%.2f\t%.2f\n",f,abs(H), (atan(imag(H),real(H)))*180/%pi);
end
for f=20:20:100
    H = 1 / (1 + %i*f); // relacao w/wo
    printf("%.2f\t%.2f\t%.2f\n",f,abs(H), (atan(imag(H),real(H)))*180/%pi);
end
