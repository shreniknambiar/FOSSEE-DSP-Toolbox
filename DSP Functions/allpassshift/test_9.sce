// Test # 9 : Input Argument #1 length
exec('./allpassshift.sci',-1);
[n,d]=allpassshift([0.3,0.2],0.6);
//!--error 10000
//Wo must be real ,numeric and scalar
//at line      33 of function allpassshift called by :  
//[n,d]=allpassshift([0.3,0.2],0.6);
