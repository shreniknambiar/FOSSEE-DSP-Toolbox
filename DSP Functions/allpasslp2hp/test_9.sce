// Test # 9 : Input Argument #1 length
exec('./allpasslp2hp.sci',-1);
[n,d]=allpasslp2hp([0.3,0.2],0.6);
//!--error 10000
//Wo must be real ,numeric and scalar
//at line      37 of function allpasslp2hp called by :  
//[n,d]= allpasslp2hp([0.3,0.2],0.6)
