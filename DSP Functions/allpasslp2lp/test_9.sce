// Test # 9 : Input Argument #1 length
exec('./allpasslp2lp.sci',-1);
[n,d]=allpasslp2lp([0.33,0.9],0.6);
//!--error 10000
//Wo must be real ,numeric and scalar
//at line      36 of function allpasslp2lp called by :  
//[n,d]=allpasslp2lp([0.33,0.9],0.6)
