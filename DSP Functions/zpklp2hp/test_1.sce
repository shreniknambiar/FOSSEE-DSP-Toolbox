// Test # 1 : No Input Arguments
exec('./zpklp2hp.sci',-1);
[z,p,k,n,d]=zpklp2hp();
//!--error 10000 
//Number of input arguments should be 5
//at line      35 of function zpklp2hp called by :  
//[z,p,k,n,d]=zpklp2hp();
