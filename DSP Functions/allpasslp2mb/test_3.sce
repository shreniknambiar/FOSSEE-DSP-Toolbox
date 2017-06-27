// Test # 3 : Incorrect number of output Arguments
exec('./allpasslp2mb.sci',-1);
[n,d,e]=allpasslp2mb(0.3,0.2);
//!--error 59
//Wrong number of output arguments
