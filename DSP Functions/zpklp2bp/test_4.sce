// Test #4 : Incorrect number of output Arguments
exec('./zpklp2bp.sci',-1);
[z,p,k,n,d,e]=zpklp2bp(0.3,0.2,0.7,0.5,[0.4,0.8]);
//!--error 59
//Wrong number of output arguments
