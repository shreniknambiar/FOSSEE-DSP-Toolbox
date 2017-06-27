// Test # 12 : Valid input test case #1
exec('./allpassshiftc.sci',-1);
[n,d]=allpassshiftc(0.2541,0.454);
disp(d);
disp(n);
//
//Scilab Output
//d= 1.    0.
//n= 0      0.8092016 + 0.5875311i 
//
//Matlab Output
//d= 1                               0
//n= 0.0000 + 0.0000i       0.8092 + 0.5875i 
