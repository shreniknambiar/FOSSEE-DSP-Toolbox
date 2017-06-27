// Test # 13 : For zero valued inputs
exec('./allpasslp2hp.sci',-1);
[n,d]=allpasslp2hp(0,0);
// !--error 10000 
//Wo must lie between 0 and 1
//at line      41 of function allpasslp2hp called by :  
//[n,d]=allpasslp2hp(0,0)
