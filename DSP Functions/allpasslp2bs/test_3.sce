// Test # 3 : Incorrect number of output Arguments
exec('./allpasslp2bs.sci',-1);
[n,d,e]=allpasslp2bs(0.1,[0.2,0.3]);
//!--error 59
//Wrong number of output arguments
