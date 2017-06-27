// Test #7 : For 1 output argument
exec('./allpasslp2bsc.sci',-1);
[n]=allpasslp2bsc(0.22,[0.45,0.93]);
disp(n);
//
//Scilab Output
//n=0.7504814               0.5620834 - 0.8270806i  
//
//Matlab Output
//n=0.7505 + 0.0000i     0.5621 - 0.8271i
