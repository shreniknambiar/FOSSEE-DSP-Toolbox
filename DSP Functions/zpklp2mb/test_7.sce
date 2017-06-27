// Test #7 : Length test for Input Argument #4
exec('./zpklp2mb.sci',-1);
[z,p,k,n,d]=zpklp2mb(2,3.3,9.8,[0.4,0.9],0.8);
//!--error 10000
//Wo must be real ,numeric and scalar
//at line      45 of function zpklp2mb called by :  
//[z,p,k,n,d]=zpklp2mb(2,3.3,9.8,[0.4,0.9],0.8);
