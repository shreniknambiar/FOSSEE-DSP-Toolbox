// Test # 8 : For zero valued inputs
exec('./allpassshift.sci',-1);
[n,d]=allpassshift(0,0);
// !--error 10000 
//Wo must lie between 0 and 1
//at line      36 of function allpassshift called by :  
//[n,d]=allpassshift(0,0);
