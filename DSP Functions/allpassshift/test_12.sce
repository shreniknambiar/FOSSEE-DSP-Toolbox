// Test # 12 : Valid input test case #1
exec('./allpassshift.sci',-1);
[n,d]=allpassshift(0.4541,0.7584);
disp(d);
disp(n);
//
//Scilab Output
//d= 1.     0.1300301       0.
//n =0.     - 0.1300301  - 1.
//
//Matlab Output
//d= 1.0000         0.1300          0
//n= 0                  -0.1300        -1.0000 
