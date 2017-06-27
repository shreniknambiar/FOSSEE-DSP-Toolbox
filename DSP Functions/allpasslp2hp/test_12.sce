// Test # 12 : Valid input test case #2
exec('./allpasslp2hp.sci',-1);
[n,d]=allpasslp2hp(0.256,0.877);
disp(d);
disp(n);
//
//Scilab Output
//d  =1.                   0.3698388  
//n  =- 0.3698388  - 1
//
//Matlab Output
//d = 1.0000     0.3698
//n = -0.3698   -1.0000 
