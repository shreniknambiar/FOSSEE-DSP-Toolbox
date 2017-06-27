// Test # 2 : Excess Input Arguments
exec('./allpasslp2mb.sci',-1);
[n,d]=allpasslp2mb(0.3,0.7,'pass',0.9);
//!--error 10000
//Number of input arguments should either 2 or 3
//at line      30 of function allpasslp2mb called by :  
//[n,d]=allpasslp2mb(0.3,0.7,'pass',0.9)
