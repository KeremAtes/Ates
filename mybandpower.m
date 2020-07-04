function FE=mybandpower(y)
FS=256;
[f_D y_D]=myfft(y,FS);
%akf ve ukf parametre çifti sýrasýyla=0-30, 0-50, 0-4, 0-8, 0-12,4-8, 4-12,
%8-12, 4-30, 8-30,  12-30

akf=0;
ukf=30;
    akf_ndx=find(f_D>akf);
    akf_ndx=akf_ndx(1);
    ukf_ndx=find(f_D<ukf);
    ukf_ndx=ukf_ndx(end);
    pwr_D=sum((abs(y_D(1,akf_ndx:ukf_ndx))).^2);
    
    
    FE=pwr_D;