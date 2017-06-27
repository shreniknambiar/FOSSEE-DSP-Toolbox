// Test # 8 : Input Argument #2 range test
exec('./allpasslp2mb.sci',-1);
[n,d]=allpasslp2mb(0.4,[0.3,1.2]);
//!--error 10000
//Wt must be in normalised form
//at line      50 of function allpasslp2mb called by :  
//[n,d]=allpasslp2mb(0.4,[0.3,1.2])
