// Test # 1 : No Input Arguments
exec('./allpasslp2bp.sci',-1);
[n,d]=allpasslp2bp();
//!--error 10000 
//Number of input arguments should be 2
//at line      28 of function allpasslp2bp called by :  
//[n,d]=allpasslp2bp();
