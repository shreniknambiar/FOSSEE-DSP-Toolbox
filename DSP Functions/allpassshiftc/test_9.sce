// Test # 9 : Input Argument #1 length
exec('./allpassshiftc.sci',-1);
[n,d]=allpassshiftc([0.2,0.7],0.5);
//!--error 10000
//Wo must be real ,numeric and scalar
//at line      36 of function allpassshiftc called by :  
//[n,d]=allpassshiftc([0.2,0.7],0.5);
