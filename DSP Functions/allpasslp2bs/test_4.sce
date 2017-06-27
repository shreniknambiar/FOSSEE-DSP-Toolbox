// Test # 4 : When either Input Argument #1 or #2 is of complex type
exec('./allpasslp2bs.sci',-1);
[n,d]=allpasslp2bs(0.3,[0.4,0.2*%i]);
//!--error 10000
//Wt must be real and numeric and must contain only 2 elements
//at line      43 of function allpasslp2bs called by :  
//[n,d]=allpasslp2bs(0.3,[0.4,0.2*%i]);
