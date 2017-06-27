// Test # 1 : No Input Arguments
exec('./zpklp2bp.sci',-1);
[z,p,k,n,d]=zpklp2bp();
//!--error 10000 
//Number of input arguments should be 5
//at line      35 of function zpklp2bp called by :  
//[z,p,k,n,d]=zpklp2bp();
