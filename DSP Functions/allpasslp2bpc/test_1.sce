// Test # 1 : No Input Arguments
exec('./allpasslp2bpc.sci',-1);
[n,d]=allpasslp2bpc();
//!--error 10000 
//Number of input arguments should be 2
//at line      28 of function allpasslp2bpc called by :  
//[n,d]=allpasslp2bpc();
