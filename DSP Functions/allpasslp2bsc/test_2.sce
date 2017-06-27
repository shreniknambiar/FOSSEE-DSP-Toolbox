// Test # 2 : Excess Input Arguments
exec('./allpasslp2bsc.sci',-1);
[n,d]=allpasslp2bsc(0.4,[0.5,0.6],6);
//!--error 58
//Wrong number of input arguments
