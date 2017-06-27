// Test # 4 : Checking the type for Input Argument #3 
exec('./zpklp2lp.sci',-1);
[z,p,k,n,d]=zpklp2lp(0.43,0.2,[0.2 0.4],0.1,0.6);
// !--error 10000 
//K must be a scalar
//at line      57 of function zpklp2lp called by :  
//[z,p,k,n,d]=zpklp2hp(0.43,0.2,[0.2,0.4],0.1,0.6)
