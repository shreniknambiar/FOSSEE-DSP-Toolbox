// Test # 4 : Input Argument #1 is of complex type
exec('./allpassrateup.sci',-1);
[n,d]=allpassrateup(%i);
//!--error 10000
//N must be real and positive scalar
//at line      33 of function allpassrateup called by :  
//[n,d]=allpassrateup(%i);
