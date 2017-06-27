// Test # 4 : Input Argument #1 is of complex type
exec('./allpassshift.sci',-1);
[n,d]=allpassshift(%i,0.6);
//!--error 10000
//Wo must be real ,numeric and scalar
//at line      33 of function allpassshift called by :  
//[n,d]=allpassshift(%i,0.6);
