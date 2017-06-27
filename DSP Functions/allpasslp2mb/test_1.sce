// Test # 1 : No Input Arguments
exec('./allpasslp2mb.sci',-1);
[n,d]=allpasslp2mb();
//!--error 10000
//Number of input arguments should either 2 or 3
//at line      30 of function allpasslp2mb called by :  
//[n,d] = allpasslp2mb()
