// Test # 5 : When either Input Argument #4 or Input Argument #5 is of complex type
exec('./zpkbpc2bpc.sci',-1);
[z,p,k,n,d]=zpkbpc2bpc(3,0.2,7,[0.5*%i,0.6],[0.4,0.8]);
//!--error 10000
//Wo must be real and numeric and must contain only 2 elements
//at line      45 of function zpkbpc2bpc called by :  
//[z,p,k,n,d]=zpkbpc2bpc(3,0.2,7,[0.5*%i,0.6],[0.4,0.8])
