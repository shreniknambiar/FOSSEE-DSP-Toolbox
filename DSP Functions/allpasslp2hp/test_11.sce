// Test # 11 : Valid input test case #1
exec('./allpasslp2hp.sci',-1);
[n,d]=allpasslp2hp(0.3,0.6);
disp(d);
disp(n);
//
//Scilab Output
//d= 1                     -0.1755705
//n= 0.1755705      -1

//Matlab Output
//d = 1.0000      -0.1756
//n = 0.1756      -1.0000  
