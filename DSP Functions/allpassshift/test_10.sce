// Test # 10 : Input Argument #2 length
exec('./allpassshift.sci',-1);
[n,d]=allpassshift(0.2,[0.1,0.9]);
//!--error 10000
//Wt must be real,numeric and scalar
//at line      40 of function allpassshift called by :  
//[n,d]=allpassshift(0.2,[0.1,0.9]);
