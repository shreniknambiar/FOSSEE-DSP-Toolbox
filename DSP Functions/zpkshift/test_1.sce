// Test # 1 : No Input Arguments
exec('./zpkshift.sci',-1);
[z,p,k,n,d]=zpkshift();
//!--error 10000 
//Number of input arguments should be 5
//at line      36 of function zpkshift called by :  
//[z,p,k,n,d]=zpkshift();
