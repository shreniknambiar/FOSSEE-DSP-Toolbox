// Test # 7 : Input Argument #1 range test
exec('./allpasslp2mb.sci',-1);
[n,d]=allpasslp2mb(1.1,0.9);
//!--error 10000
//Wo must lie between 0 and 1
//at line      41 of function allpasslp2mb called by :  
//[n,d]=allpasslp2mb(1.1,0.9)
