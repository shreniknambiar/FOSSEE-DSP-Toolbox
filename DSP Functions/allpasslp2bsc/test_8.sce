// Test # 8 : Input Argument #1 or #2 length test
exec('./allpasslp2bsc.sci',-1);
[n,d]=allpasslp2bsc([0.3,0.4],[0.3,0.42]);
//!--error 10000
//Wo must be real ,numeric and scalar
//at line      36 of function allpasslp2bsc called by :  
//[n,d]=allpasslp2bsc([0.3,0.4],[0.3,0.42]);
