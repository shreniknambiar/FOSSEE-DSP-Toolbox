// Test #7 : Length test for Input Argument #4 or Input Argument #5
exec('./zpklp2hp.sci',-1);
[z,p,k,n,d]=zpklp2hp(2,3,4,[0.4,7],0.9);
//!--error 10000
//Wo must be real ,numeric and scalar
//at line      43 of function zpklp2hp called by :  
//[z,p,k,n,d]=zpklp2hp(2,3,4,[0.4,7],0.9);
