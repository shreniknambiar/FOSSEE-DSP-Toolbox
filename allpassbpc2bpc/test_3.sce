// Test # 3 : Incorrect number of output Arguments
exec('./allpassbpc2bpc.sci',-1);
[n,d,e]=allpassbpc2bpc([0.4,0.5],[0.1,0.9]);
//!--error 59
//Wrong number of output arguments
