// Test # 2 : Excess Input Arguments
exec('./allpasslp2bp.sci',-1);
[n,d]=allpasslp2bp(0.3,[0.1,0.5],0.4);
//!--error 58
//Wrong number of input arguments
