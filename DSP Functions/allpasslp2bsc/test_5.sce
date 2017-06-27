// Test #5 : Input Argument #1 range test
exec('./allpasslp2bsc.sci',-1);
[n,d]=allpasslp2bsc(-32,[0.5,0.89]);
//!--error 10000
//Wo must lie between 0 and 1
//at line      39 of function allpasslp2bsc called by :  
//[n,d]=allpasslp2bsc(-32,[0.5,0.89]);
