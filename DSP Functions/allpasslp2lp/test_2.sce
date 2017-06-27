// Test # 2 : Excess Input Arguments
exec('./allpasslp2lp.sci',-1);
[n,d]=allpasslp2lp(0.1,0.2,0.9);
//!--error 58
//Wrong number of input arguments
