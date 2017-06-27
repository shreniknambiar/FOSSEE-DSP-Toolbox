// Test # 5 : When either Input Argument #4 or Input Argument #5 is of complex type
exec('./zpklp2bs.sci',-1);
[z,p,k,n,d]=zpklp2bs(3,0.2,7,2*%i,[0.6,0.8]);
// !--error 10000 
//Wo must be real ,numeric and scalar
//at line      43 of function zpklp2bs called by :  
//[z,p,k,n,d]=zpklp2bs(3,0.2,7,2*%i,[0.6,0.8]);
