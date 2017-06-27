// Test # 7 : Input Argument #2 range test
exec('./allpasslp2hp.sci',-1);
[n,d]=allpasslp2hp(0.3,1.1);
//!--error 10000
//Wt must lie between 0 and 1
//at line      49 of function allpasslp2hp called by :  
//[n,d]= allpasslp2hp(0.3,1.1)
