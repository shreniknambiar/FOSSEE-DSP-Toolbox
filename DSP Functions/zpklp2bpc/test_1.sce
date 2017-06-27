// Test # 1 : No Input Arguments
exec('./zpklp2bpc.sci',-1);
[z,p,k,n,d]=zpklp2bpc();
//!--error 10000 
//Number of input arguments should be 5
//at line      35 of function zpklp2bpc called by :  
//[z,p,k,n,d]=zpklp2bpc();
