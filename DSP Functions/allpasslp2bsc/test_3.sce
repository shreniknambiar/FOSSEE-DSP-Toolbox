// Test # 3 : Incorrect number of output Arguments
exec('./allpasslp2bsc.sci',-1);
[n,d,e]=allpasslp2bsc(0.98,[0.1,0.2]);
//!--error 59
//Wrong number of output arguments
