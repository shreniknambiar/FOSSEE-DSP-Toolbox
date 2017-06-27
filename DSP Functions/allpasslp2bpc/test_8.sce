// Test # 8 : Input Argument #1 or #2 length test
exec('./allpasslp2bpc.sci',-1);
[n,d]=allpasslp2bpc(0.3,[0.56,0.8,0.99]);
//!--error 10000
//Wt must be real,numeric and must contain only 2 elements
//at line      43 of function allpasslp2bpc called by :  
//[n,d]=allpasslp2bpc(0.3,[0.56,0.8,0.99]);
