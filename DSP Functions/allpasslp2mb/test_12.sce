// Test # 12 : Valid input test case #1
exec('./allpasslp2mb.sci',-1);
[n,d]=allpasslp2mb(0.753,[0.32,0.45,0.66]);
disp(d);
disp(n);
//
//Scilab Output
// d=1.               - 0.5596341    0.8425653  - 0.3801107
//n=0.3801107  - 0.8425653    0.5596341  - 1.
//
//Matlab Output
//d = 1.0000      -0.5596         0.8426         -0.3801
//n = 0.3801      -0.8426         0.5596         -1.0000 
