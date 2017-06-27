// Test # 9 : Valid input test case #1
exec('./allpassbpc2bpc.sci',-1);
[n,d]=allpassbpc2bpc([0.3,0.7],[0.2,0.8]);
disp(d);
disp(n);
//
//Scilab Output
//d=1.                                       1.355D-17 + 0.2212317i  
//n=1.355D-17-0.2212317i      1. 

//Matlab Output
//n=0.0000 - 0.2212i     1.0000 + 0.0000i 
//d=1.0000 + 0.0000i    0.0000 + 0.2212i
