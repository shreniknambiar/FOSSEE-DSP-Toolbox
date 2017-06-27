// Test # 3 : Checking the type for Input Argument #3 
exec('./zpklp2hp.sci',-1);
[z,p,k,n,d]=zpklp2hp(0.3,0.2,[0.4 0.8],0.5,0.6);
// !--error 10000 
//K must be a scalar
//at line      57 of function zpklp2hp called by :  
//[z,p,k,n,d]=zpklp2hp(0.3,0.2,[0.7,0.9],0.5,0.6)
