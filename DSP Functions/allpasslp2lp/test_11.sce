// Test # 11 : Valid input test case #1
exec('./allpasslp2lp.sci',-1);
[n,d]=allpasslp2lp(0.753,0.946);
disp(d);
disp(n);
//
//Scilab Output
//d =1.                   0.6555731  
//n = 0.6555731    1.
//
//Matlab Output
//d = 1.0000    0.6556
//n  =0.6556    1.0000
