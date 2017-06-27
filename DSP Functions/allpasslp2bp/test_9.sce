// Test # 9 : Valid input test case #1
exec('./allpasslp2bp.sci',-1);
[n,d]=allpasslp2bp(0.7,[0.49,0.78]);
disp(d);
disp(n);
//
//Scilab Output
//d=1.                  0.7334144       0.6004943  
//n=- 0.6004943  - 0.7334144    -1. 

//Matlab Output
//n= -0.6005    -0.7334     -1.0000 
//d= 1.0000      0.7334        0.6005
