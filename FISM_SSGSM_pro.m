function mag=FISM_SSGSM_pro(img)
img = adjcontrast(img,5,1);
[gx,gy]=derivative5(img,'x','y');
mag1=sqrt((exp(-gx)).^2+(exp(-gy)).^2);
[M,m] = phasecong3(img);
phaseCong =exp(-mag1).*M;
mag=phaseCong.^0.333-m.^2;
end


