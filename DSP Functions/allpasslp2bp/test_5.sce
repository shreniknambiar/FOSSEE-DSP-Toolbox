// Test #5 : Input Argument #1 range test
exec('./allpasslp2bp.sci',-1);
[n,d]=allpasslp2bp(1.1,[0.5,0.9]);
//!--error 10000
//Wo must lie between 0 and 1
//at line      39 of function allpasslp2bp called by :  
//[n,d]=allpasslp2bp(1.1,[0.5,0.9]);
