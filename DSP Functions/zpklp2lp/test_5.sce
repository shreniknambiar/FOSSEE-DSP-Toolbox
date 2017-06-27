// Test # 5 : When either Input Argument #4 or Input Argument #5 is of complex type
exec('./zpklp2lp.sci',-1);
[z,p,k,n,d]=zpklp2lp(2,3,4,%i,0.7);
//!--error 10000
//Wo must be real ,numeric and scalar
//at line      43 of function zpklp2hp called by :  
//[z,p,k,n,d]=zpklp2lp(2,3,4,%i,0.7);
