// Test # 1 : No Input Arguments
exec('./zpklp2lp.sci',-1);
[z,p,k,n,d]=zpklp2lp();
//!--error 10000 
//Number of input arguments should be 5
//at line      35 of function zpklp2lp called by :  
//[z,p,k,n,d]=zpklp2lp();
