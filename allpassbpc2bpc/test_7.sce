// Test #7 : For 1 output argument
exec('./allpassbpc2bpc.sci',-1);
[n]=allpassbpc2bpc([0.1,0.2],[-0.5,0.8]);
disp(n);
//
//Scilab Output
//n=0.8090170-0.4122147i    1.
//
//Matlab Output
//n = 0.8090 - 0.4122i            1.0000 + 0.0000i
