// Test # 5 : When either Input Argument #4 or Input Argument #5 is of complex type
exec('./zpkshiftc.sci',-1);
[z,p,k,n,d]=zpkshiftc(2,4.8,1,5*%i,0.6);
//!--error 10000
//Wo must be real ,numeric and scalar
//at line      42 of function zpkshiftc called by :  
//[z,p,k,n,d]=zpkshiftc(2,4.8,1,5*%i,0.6);
 
