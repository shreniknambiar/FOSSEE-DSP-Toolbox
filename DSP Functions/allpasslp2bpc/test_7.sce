// Test #7 : For 1 output argument
exec('./allpasslp2bpc.sci',-1);
[n]=allpasslp2bpc(0.41,[0.35,0.9]);
disp(n);
//
//Scilab Output
//n=- 0.2391553                -0.3826834 + 0.9238795i 
//
//Matlab Output
//n= -0.2392 + 0.0000i      -0.3827 + 0.9239i
