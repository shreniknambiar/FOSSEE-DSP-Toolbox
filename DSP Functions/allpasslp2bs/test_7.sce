// Test #7 : For 1 output argument
exec('./allpasslp2bs.sci',-1);
[n]=allpasslp2bs(0.67,[0.2,0.73]);
disp(n);
//
//Scilab Output
//n=-0.3166428      -0.1114210    1. 
//
//Matlab Output
//n=-0.3166            -0.1114          1.0000
