// Test # 11 : Input Argument #1 length
exec('./allpasslp2mb.sci',-1);
[n,d]=allpasslp2mb([0.23,0.49],0.16);
//!--error 10000
//Wo must be real ,numeric and scalar
//at line      38 of function allpasslp2mb called by :  
//[n,d]=allpasslp2mb([0.23,0.49],0.16)
