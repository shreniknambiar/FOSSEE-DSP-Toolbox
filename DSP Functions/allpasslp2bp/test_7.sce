// Test #7 : For 1 output argument
exec('./allpasslp2bp.sci',-1);
[n]=allpasslp2bp(0.1,[0.5,0.8]);
disp(n);
//
//Scilab Output
//n=0.5257311   -0.2416521    -1. 
//
//Matlab Output
//n=0.5257          -0.2417         -1.0000i
