// Test #7 : Length test for Input Argument #4 or Input Argument #5
exec('./zpkshift.sci',-1);
[z,p,k,n,d]=zpkshift(5,3,1,0.7,[0.9 0.5]);
//!--error 10000
//Wt must be real, numeric and scalar
//at line      51 of function zpkshift called by :  
//[z,p,k,n,d]=zpkshift(5,3,1,0.7,[0.9 0.5]);
