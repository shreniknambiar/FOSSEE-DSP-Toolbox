// Test # 2 : Excess Input Arguments
exec('./allpasslp2bpc.sci',-1);
[n,d]=allpasslp2bpc(0.2,[0.1,0.9],0.4);
//!--error 58
//Wrong number of input arguments
