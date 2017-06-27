// Test # 2 : Excess Input Arguments
exec('./allpassshiftc.sci',-1);
[n,d]=allpassshiftc(0.3,0.24,0.16);
//!--error 58
//Wrong number of input arguments
