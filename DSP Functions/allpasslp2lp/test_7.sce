// Test # 7 : Input Argument #2 range test
exec('./allpasslp2lp.sci',-1);
[n,d]=allpasslp2lp(0.3,1.1);
//!--error 10000
//Wt must lie between 0 and 1
//at line      46 of function allpasslp2lp called by :  
//[n,d]=allpasslp2lp(0.3,1.1)
