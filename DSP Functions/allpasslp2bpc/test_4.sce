// Test # 4 : When either Input Argument #1 or #2 is of complex type
exec('./allpasslp2bpc.sci',-1);
[n,d]=allpasslp2bpc(0.1,[0.3,0.4*%i]);
//!--error 10000
//Wt must be real,numeric and must contain only 2 elements
//at line      43 of function allpasslp2bpc called by :  
//[n,d]=allpasslp2bpc(0.1,[0.3,0.4*%i]);
