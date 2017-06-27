// Test # 5 : When either Input Argument #4 or Input Argument #5 is of complex type
exec('./zpklp2mb.sci',-1);
[z,p,k,n,d]=zpklp2mb(2,3,1,8.22*%i,0.2);
//!--error 10000
//Wo must be real ,numeric and scalar
//at line      45 of function zpklp2mb called by :  
//[z,p,k,n,d]=zpklp2mb(2,3,1,8.22*%i,0.2);
