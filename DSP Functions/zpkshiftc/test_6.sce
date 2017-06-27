// Test # 6 : Range test for Input Argument #4 or Input Argument #5
exec('./zpkshiftc.sci',-1);
[z,p,k,n,d]=zpkshiftc(2,5,7,0.5,4);
//!--error 10000
//Wt must lie between 0 and 1
//at line      52 of function zpkshiftc called by :  
//[z,p,k,n,d]=zpkshift(2,5,7,0.5,4);
