// Test # 3 : Checking the type for Input Argument #3 
exec('./zpklp2bp.sci',-1);
[z,p,k,n,d]=zpklp2bp(0.3,0.2,[0.5,0.6],0.4,[0.1,0.4]);
// !--error 10000 
//K must be a scalar
//at line      57 of function zpklp2bp called by :  
//[z,p,k,n,d]=zpklp2bp(0.3,0.2,[0.5.6],0.4,[0.1,0.4])
