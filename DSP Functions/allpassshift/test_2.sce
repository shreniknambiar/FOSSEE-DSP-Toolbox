// Test # 2 : Excess Input Arguments
exec('./allpassshift.sci',-1);
[n,d]=allpassshift(0.2,0.4,0.6);
//!--error 58
//Wrong number of input arguments
