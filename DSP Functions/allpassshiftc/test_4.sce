// Test # 4 : Input Argument #1 is of complex type
exec('./allpassshiftc.sci',-1);
[n,d]=allpassshiftc(%i,0.2);
//!--error 10000
//Wo must be real ,numeric and scalar
//at line      36 of function allpassshiftc called by :  
//[n,d]=allpassshiftc(%i,0.2);
