// Test # 6 : Input Argument #1 range test
exec('./allpassshift.sci',-1);
[n,d]=allpassshift(3,0.4);
//!--error 10000
//Wo must lie between 0 and 1
//at line      36 of function allpassshift called by :  
//[n,d]=allpassshift(3,0.4);
