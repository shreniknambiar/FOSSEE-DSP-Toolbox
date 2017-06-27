// Test # 5 : When either Input Argument #4 is of complex type
exec('./zpkrateup.sci',-1);
[z,p,k,n,d]=zpkrateup(5,8,1,3*%i);
//!--error 10000
//N must be real and positive scalar
//at line      41 of function zpkrateup called by :  
//[z,p,k,n,d]=zpkrateup(5,8,1,3*%i);
 
