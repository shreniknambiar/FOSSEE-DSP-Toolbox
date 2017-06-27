// Test # 6 : Input Argument #2 is of complex type
exec('./allpasslp2mb.sci',-1);
[n,d]=allpasslp2mb(0.33,%i);
//!--error 10000
//Wt must be vector and real
//at line      45 of function allpasslp2mb called by :  
//[n,d]=allpasslp2mb(0.33,%i)
