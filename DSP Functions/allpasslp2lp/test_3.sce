// Test # 3 : Incorrect number of output Arguments
exec('./allpasslp2lp.sci',-1);
[n,d,e]=allpasslp2lp(0.1,0.2);
//!--error 59
//Wrong number of output arguments
