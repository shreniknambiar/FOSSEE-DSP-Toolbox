// Test # 10 : Input Argument #2 length
exec('./allpasslp2hp.sci',-1);
[n,d]=allpasslp2hp(0.3,[0.6,0.2]);
//!--error 10000
//Wt must be real,numeric and scalar
//at line      45 of function allpasslp2hp called by :  
//[n,d]= allpasslp2hp(0.3,[0.6,0.2])
