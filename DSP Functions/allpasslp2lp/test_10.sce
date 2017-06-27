// Test # 10 : Input Argument #2 length
exec('./allpasslp2lp.sci',-1);
[n,d]=allpasslp2lp(0.63,[0.26,0.72]);
//!--error 10000
//Wt must be real,numeric and scalar
//at line      43 of function allpasslp2lp called by :  
//[n,d]=allpasslp2lp(0.63,[0.26,0.72])
