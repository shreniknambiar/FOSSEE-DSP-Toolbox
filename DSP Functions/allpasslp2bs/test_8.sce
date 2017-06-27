// Test # 8 : Input Argument #1 or #2 length test
exec('./allpasslp2bs.sci',-1);
[n,d]=allpasslp2bs(0.3,[0.11,0.2,0.9]);
//!--error 10000
//Wt must be real and numeric and must contain only 2 elements
//at line      43 of function allpasslp2bs called by :  
//[n,d]=allpasslp2bs(0.3,[0.11,0.2,0.9]);
