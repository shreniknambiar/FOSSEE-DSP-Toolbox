// Test #7 : Length test for Input Argument #4 or Input Argument #5
exec('./zpklp2bs.sci',-1);
[z,p,k,n,d]=zpklp2bs(9,[2 4],1,0.6,[0.4,0.7,0.9]);
//!--error 10000
//Wt must be real and numeric and must contain only 2 elements
//at line      50 of function zpklp2bs called by :  
//[z,p,k,n,d]=zpklp2bs(9,[2 4],1,0.6,[0.4,0.7,0.9]);
