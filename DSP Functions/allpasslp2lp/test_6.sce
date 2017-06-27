// Test # 6 : Input Argument #1 range test
exec('./allpasslp2lp.sci',-1);
[n,d]=allpasslp2lp(1.1,0.9);
//!--error 10000
//Wo must lie between 0 and 1
//at line      39 of function allpasslp2lp called by :  
//[n,d]=allpasslp2lp(1.1,0.9)
