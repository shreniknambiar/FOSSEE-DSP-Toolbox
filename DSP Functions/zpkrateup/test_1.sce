// Test # 1 : No Input Arguments
exec('./zpkrateup.sci',-1);
[z,p,k,n,d]=zpkrateup();
//!--error 10000 
//Number of input arguments should be 4
//at line      33 of function zpkrateup called by :  
//[z,p,k,n,d]=zpkrateup();
