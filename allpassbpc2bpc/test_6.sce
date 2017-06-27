// Test #6 : Input Argument #2 range test
exec('./allpassbpc2bpc.sci',-1);
[n,d]=allpassbpc2bpc([0.3,0.1],[-1.4,0.9]);
//!--error 10000
//Wt must lie between -1 and 1
//at line      46 of function allpassbpc2bpc called by :  
//[n,d]=allpassbpc2bpc([0.3,0.1],[-1.4,0.9]);
