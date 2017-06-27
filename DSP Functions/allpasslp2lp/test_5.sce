// Test # 4 : Input Argument #2 is of complex type
exec('./allpasslp2mb.sci',-1);
[n,d]=allpasslp2lp(0.3,%i);
//!--error 10000
//Wo must be real ,numeric and scalar
//at line      37 of function allpasslp2lp called by :  
//[n,d]=allpasslp2lp(0.3,%i)
