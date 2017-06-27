// Test # 6 : Input Argument #1 range test
exec('./allpassshiftc.sci',-1);
[n,d]=allpassshiftc(6,0.4);
//!--error 10000
//Wo must lie between -1 and 1
//at line      39 of function allpassshiftc called by :  
//[n,d]=allpassshiftc(6,0.4);
