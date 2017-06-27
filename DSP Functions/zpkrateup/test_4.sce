// Test # 4 : Incorrect number of output Arguments
exec('./zpkrateup.sci',-1);
[z,p,k,n,d,e]=zpkrateup(3,2,8,2);
//!--error 59
//Wrong number of output arguments
