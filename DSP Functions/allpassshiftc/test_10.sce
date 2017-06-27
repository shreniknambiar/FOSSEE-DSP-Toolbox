// Test # 10 : Input Argument #2 length
exec('./allpassshiftc.sci',-1);
[n,d]=allpassshiftc(0.1,[0.4,0.5]);
//!--error 10000
//Wt must be real,numeric and scalar 
//at line      43 of function allpassshiftc called by :  
//[n,d]=allpassshiftc(0.1,[0.4,0.5]);
