// Test # 2 : Excess Input Arguments
exec('./allpasslp2hp.sci',-1);
[n,d]=allpasslp2hp(0.3,0.2,0.7);
//!--error 58
//Wrong number of input arguments
