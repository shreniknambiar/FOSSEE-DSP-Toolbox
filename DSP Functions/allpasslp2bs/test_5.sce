// Test #5 : Input Argument #1 range test
exec('./allpasslp2bs.sci',-1);
[n,d]=allpasslp2bs(11,[0.35,0.53]);
//!--error 10000
//Wo must lie between 0 and 1
//at line      39 of function allpasslp2bs called by :  
//[n,d]=allpasslp2bs(11,[0.35,0.53]);
