// Test # 4 : Input Argument #1 is of complex type
exec('./allpasslp2lp.sci',-1);
[n,d]=allpasslp2lp(%i,0.2);
//!--error 10000
//Wo must be real ,numeric and scalar
//at line      36 of function allpasslp2lp called by :  
//[n,d]=allpasslp2lp(%i,0.2)
