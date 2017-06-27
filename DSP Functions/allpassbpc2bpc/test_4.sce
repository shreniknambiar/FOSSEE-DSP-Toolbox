// Test # 4 : When either Input Argument #1 or #2 is of complex type
exec('./allpassbpc2bpc.sci',-1);
[n,d]=allpassbpc2bpc([0.4*%i,0.7],[0.2,0.5]);
//!--error 10000
//Wo must be real, numeric and must contain only 2 elements
//at line      36 of function allpassbpc2bpc called by :  
//[n,d]=allpassbpc2bpc([0.4*%i,0.7],[0.2,0.5]);
