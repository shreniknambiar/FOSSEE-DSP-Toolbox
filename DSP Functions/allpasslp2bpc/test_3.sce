// Test # 3 : Incorrect number of output Arguments
exec('./allpasslp2bpc.sci',-1);
[n,d,e]=allpasslp2bpc(0.3,[0.4,0.9]);
//!--error 59
//Wrong number of output arguments
