// Test # 6 : Range test for Input Argument #4 or Input Argument #5
exec('./zpkshift.sci',-1);
[z,p,k,n,d]=zpkshift(9,1,4,4,0.4);
//!--error 10000
//Wo must lie between 0 and 1
//at line      47 of function zpkshift called by :  
//[z,p,k,n,d]=zpkshift(9,1,4,4,0.4);
