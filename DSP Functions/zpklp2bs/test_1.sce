// Test # 1 : No Input Arguments
exec('./zpklp2bs.sci',-1);
[z,p,k,n,d]=zpklp2bs();
//!--error 10000 
//Number of input arguments should be 5
//at line      35 of function zpklp2bs called by :  
//[z,p,k,n,d]=zpklp2bs();
