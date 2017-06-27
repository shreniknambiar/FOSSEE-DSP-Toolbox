// Test #6 : Input Argument #2 range test
exec('./allpasslp2bs.sci',-1);
[n,d]=allpasslp2bs(0.4,[-4,0.39]);
//!--error 10000
//Wt must lie between 0 and 1
//at line      46 of function allpasslp2bs called by :  
//[n,d]=allpasslp2bs(0.4,[-4,0.39]);
