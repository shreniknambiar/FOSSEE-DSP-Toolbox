// Test # 3 : Incorrect number of output Arguments
exec('./zpklp2mb.sci',-1);
[z,p,k,n,d,e]=zpklp2mb(0.3,2,8,0.8,0.2);
//!--error 59
//Wrong number of output arguments
