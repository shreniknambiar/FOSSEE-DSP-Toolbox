// Test # 5 : When either Input Argument #4 or Input Argument #5 is of complex type
exec('./zpkshift.sci',-1);
[z,p,k,n,d]=zpkshift(5,8,1,3*%i,0.2);
//!--error 10000
//Wo must be real ,numeric and scalar
//at line      44 of function zpkshift called by :  
//[z,p,k,n,d]=zpkshift(5,8,1,3*%i,0.2);
 
