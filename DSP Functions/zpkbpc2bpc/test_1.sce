// Test # 1 : No Input Arguments
exec('./zpkbpc2bpc.sci',-1);
[z,p,k,n,d]=zpkbpc2bpc();
//!--error 10000 
//Number of input arguments should be 5
//at line      37 of function zpkbpc2bpc called by :  
//[z,p,k,n,d]=zpkbpc2bpc();
