// Test # 4 : Incorrect number of output Arguments
exec('./zpkshift.sci',-1);
[z,p,k,n,d,e]=zpkshift(0.3,2,8,0.8,0.2);
//!--error 59
//Wrong number of output arguments
