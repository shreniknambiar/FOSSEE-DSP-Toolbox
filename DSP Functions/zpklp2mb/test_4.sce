// Test # 4 : Checking the type for Input Argument #3 
exec('./zpklp2mb.sci',-1);
[z,p,k,n,d]=zpklp2mb(0.1,2,[3 0.4],0.1,0.6);
// !--error 10000 
//K must be a scalar
//at line      63 of function zpklp2mb called by :  
//[z,p,k,n,d]=zpklp2mb(0.1,2,[3 0.4],0.1,0.6);
