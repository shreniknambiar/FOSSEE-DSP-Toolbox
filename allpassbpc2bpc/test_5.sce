// Test #5 : Input Argument #1 range test
exec('./allpassbpc2bpc.sci',-1);
[n,d]=allpassbpc2bpc([1.1,0.9],[0.5,0.9]);
//!--error 10000
//Wo must lie between -1 and 1
//at line      39 of function allpassbpc2bpc called by :  
//[n,d]=allpassbpc2bpc([1.1,0.9],[0.5,0.9]);
