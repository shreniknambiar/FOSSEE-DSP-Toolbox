// Test #6 : Input Argument #2 range test
exec('./allpasslp2bpc.sci',-1);
[n,d]=allpasslp2bpc(0.848,[-3,0.2]);
//!--error 10000
//Wt must lie between 0 and 1
//at line      46 of function allpasslp2bpc called by :  
//[n,d]=allpasslp2bpc(0.848,[-3,0.2]);
