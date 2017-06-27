// Test # 11 : Valid input test case #1
exec('./allpasslp2lp.sci',-1);
[n,d]=allpasslp2lp(0.64,0.12);
disp(d);
disp(n);
//
//Scilab Output
//d =1.                    -0.7840257  
//n =-0.7840257    1.

//Matlab Output
//d = 1.0000 -0.7840
//n = -0.7840 1.0000
