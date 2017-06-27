// Test # 5 : Input Argument #2 is of complex type
exec('./allpassshift.sci',-1);
[n,d]=allpassshift(0.1,%i);
//!--error 10000
//Wt must be real,numeric and scalar
//at line      40 of function allpassshift called by :  
//[n,d]=allpassshift(0.1,%i);
