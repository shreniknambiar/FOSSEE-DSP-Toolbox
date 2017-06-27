// Test # 2 : Excess Input Arguments
exec('./allpasslp2bs.sci',-1);
[n,d]=allpasslp2bs(0.1,[0.1,0.2],0.3);
//!--error 58
//Wrong number of input arguments
