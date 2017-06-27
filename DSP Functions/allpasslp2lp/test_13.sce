// Test # 13 : For zero valued inputs
exec('./allpasslp2lp.sci',-1);
[n,d]=allpasslp2lp(0,0);
// !--error 10000 
//Wo must lie between 0 and 1
//at line      39 of function allpasslp2lp called by :  
//[n,d]=allpasslp2lp(0,0)
