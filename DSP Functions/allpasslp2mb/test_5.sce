// Test # 5 : Input Argument #1 is of complex type
exec('./allpasslp2mb.sci',-1);
[n,d]=allpasslp2mb(%i,0.7);
//!--error 10000
//Wo must be real ,numeric and scalar
//at line      38 of function allpasslp2mb called by :  
//[n,d]=allpasslp2mb(%i,0.7)
