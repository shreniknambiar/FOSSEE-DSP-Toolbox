// Test # 6 : Input Argument #1 range test
exec('./allpasslp2hp.sci',-1);
[n,d]=allpasslp2hp(1.1,0.9);
//!--error 10000
//Wo must lie between 0 and 1
//at line      41 of function allpasslp2hp called by :  
//[n,d]= allpasslp2hp(1.1,0.9)
