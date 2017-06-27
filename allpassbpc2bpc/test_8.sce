// Test # 8 : Input Argument #1 or #2 length test
exec('./allpassbpc2bpc.sci',-1);
[n,d]=allpassbpc2bpc([0.3,0.2],0.6);
//!--error 10000
//Wt must be real,numeric and must contain only 2 elements
//at line      43 of function allpassbpc2bpc called by :  
//[n,d]=allpassbpc2bpc([0.3,0.2],0.6);
