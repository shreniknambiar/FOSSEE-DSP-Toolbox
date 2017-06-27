// Test # 4 : For zero valued inputs
exec('./allpasslp2mb.sci',-1);
[n,d]=allpasslp2mb(0,0);
// !--error 10000 
//Wo must lie between 0 and 1
//at line      41 of function allpasslp2mb called by :  
//[n,d]=allpasslp2mb(0,0)
