// Test # 13 : For zero valued inputs
exec('./allpassshiftc.sci',-1);
[n,d]=allpassshiftc(0,0);
disp(d);
disp(n);
// 
//Scilab Output
//d=1.      0.
//n= 0      1.
//
//Matlab Output
//d=  1     0
//n = 0     1 
