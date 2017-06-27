// Test # 7 : Input Argument #2 range test
exec('./allpassshift.sci',-1);
[n,d]=allpassshift(0.6,3.1);
//!--error 10000
//Wt must lie between 0 and 1
//at line      43 of function allpassshift called by :  
//[n,d]=allpassshift(0.6,3.1);
