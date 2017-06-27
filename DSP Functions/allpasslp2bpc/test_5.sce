// Test #5 : Input Argument #1 range test
exec('./allpasslp2bpc.sci',-1);
[n,d]=allpasslp2bpc(4,[0.23,0.9]);
//!--error 10000
//Wo must lie between 0 and 1
//at line      39 of function allpasslp2bpc called by :  
//[n,d]=allpasslp2bpc(4,[0.23,0.9]);
