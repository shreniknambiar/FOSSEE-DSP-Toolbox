// Test #6 : Input Argument #2 range test
exec('./allpasslp2bp.sci',-1);
[n,d]=allpasslp2bp(0.3,[-1.4,0.9]);
//!--error 10000
//Wt must lie between 0 and 1
//at line      46 of function allpasslp2bp called by :  
//[n,d]=allpasslp2bp(0.3,[-1.4,0.9]);
