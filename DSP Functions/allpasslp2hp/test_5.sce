// Test # 5 : Input Argument #2 is of complex type
exec('./allpasslp2hp.sci',-1);
[n,d]=allpasslp2hp(0.3,%i);
//!--error 10000
//Wt must be real,numeric and scalar
//at line      45 of function allpasslp2hp called by :  
//[n,d]= allpasslp2hp(0.3,%i)
