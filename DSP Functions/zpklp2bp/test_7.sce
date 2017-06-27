// Test #7 : Length test for Input Argument #4 or Input Argument #5
exec('./zpklp2bp.sci',-1);
[z,p,k,n,d]=zpklp2bp(4,2.2,1,0.6,[-0.8,0.34,0.28]);
//!--error 10000
//Wt must be real and numeric and must contain only 2 elements
//at line      50 of function zpkbpc2bpc called by :  
//[z,p,k,n,d]=zpkbpc2bpc(4,2.2,1,0.6,[-0.8,0.34,0.28])
