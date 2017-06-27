// Test # 1 : No Input Arguments
exec('./zpkshiftc.sci',-1);
[z,p,k,n,d]=zpkshiftc();
//!--error 10000 
//Number of input arguments should be 5
//at line      34 of function zpkshiftc called by :  
//[z,p,k,n,d]=zpkshiftc();
