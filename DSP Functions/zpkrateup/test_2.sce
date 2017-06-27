// Test # 2 : Excess Input Arguments
exec('./zpkrateup.sci',-1);
[z,p,k,n,d]=zpkrateup(3,7.2,8.7,5,6);
//!--error 58
//Wrong number of input arguments
