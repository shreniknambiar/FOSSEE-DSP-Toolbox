// Test # 2 : Excess Input Arguments
exec('./allpassbpc2bpc.sci',-1);
[n,d]=allpassbpc2bpc([0.3,0.2],[0.1,0.5]);
//!--error 58
//Wrong number of input arguments
