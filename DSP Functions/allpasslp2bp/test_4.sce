// Test # 4 : When either Input Argument #1 or #2 is of complex type
exec('./allpasslp2bp.sci',-1);
[n,d]=allpasslp2bp(0.4,[0.1,0.2*%i]);
//!--error 10000
//Wt must be real and numeric and must contain only 2 elements
//at line      43 of function allpasslp2bp called by :  
//[n,d]=allpasslp2bp(0.4,[0.1,0.2*%i]);
