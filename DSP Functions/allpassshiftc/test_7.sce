// Test # 7 : Input Argument #2 range test
exec('./allpassshiftc.sci',-1);
[n,d]=allpassshiftc(0.2,53);
//!--error 10000
//Wt must lie between -1 and 1
//at line      46 of function allpassshiftc called by :  
//[n,d]=allpassshiftc(0.2,53);
