// Test #7 : Length test for Input Argument #4 or Input Argument #5
exec('./zpkshiftc.sci',-1);
[z,p,k,n,d]=zpkshiftc(1,3,1,0.7,[0.2 0.6]);
//!--error 10000
//Wt must be real, numeric and scalar
//at line      49 of function zpkshiftc called by :  
//[z,p,k,n,d]=zpkshiftc(1,3,1,0.7,[0.2 0.6]);
