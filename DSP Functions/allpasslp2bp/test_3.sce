// Test # 3 : Incorrect number of output Arguments
exec('./allpasslp2bp.sci',-1);
[n,d,e]=allpasslp2bp(0.1,[0.5,0.9]);
//!--error 59
//Wrong number of output arguments
