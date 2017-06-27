// Test # 4 : Input Argument #1 is of complex type
exec('./allpasslp2hp.sci',-1);
[n,d]=allpasslp2hp(%i,0.3);
//!--error 10000
//Wo must be real ,numeric and scalar
//at line      37 of function allpasslp2hp called by :  
//[n,d]= allpasslp2hp(%i,0.3)
