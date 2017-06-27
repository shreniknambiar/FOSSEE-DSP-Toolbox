// Test # 12 : Valid inputs
exec('./allpassrateup.sci',-1);
[n,d]=allpassrateup(4);
disp(d);
disp(n);
//
//Scilab Output
//d=    1.    0.    0.    0.    0.  
//n=    0.    0.    0.    0.    1. 
//
//Matlab Output
//n=    0     0       0     0   1 
//d=    1     0       0     0   0
