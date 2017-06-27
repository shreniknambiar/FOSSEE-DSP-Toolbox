// Test # 4 : When either Input Argument #1 or #2 is of complex type
exec('./allpasslp2bsc.sci',-1);
[n,d]=allpasslp2bsc(0.1*%i,[0.2,0.7]);
//!--error 10000
//Wo must be real ,numeric and scalar
//at line      36 of function allpasslp2bsc called by :  
//[n,d]=allpasslp2bsc(0.1*%i,[0.2,0.7]);
