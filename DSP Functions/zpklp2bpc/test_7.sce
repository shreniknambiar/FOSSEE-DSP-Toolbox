// Test #7 : Length test for Input Argument #4 or Input Argument #5
exec('./zpklp2bpc.sci',-1);
[z,p,k,n,d]=zpklp2bpc(4,2.2,1,[0.6,0.7],[0.34,0.28]);
//!--error 10000
//Wo must be real ,numeric and scalar
//at line      43 of function zpklp2bpc called by :  
//[z,p,k,n,d]=zpklp2bpc(4,2.2,1,[0.6,0.7],[0.34,0.28])
