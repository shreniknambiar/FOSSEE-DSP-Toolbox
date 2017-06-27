// Test # 5 : Input Argument #2 is of complex type
exec('./allpassshiftc.sci',-1);
[n,d]=allpassshiftc(0.4,%i);
//!--error 10000
//Wt must be real,numeric and scalar 
//at line      43 of function allpassshiftc called by :  
//[n,d]=allpassshiftc(0.4,%i);
