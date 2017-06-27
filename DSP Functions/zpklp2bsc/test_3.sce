// Test # 3 : Checking the type for Input Argument #3 
exec('./zpklp2bsc.sci',-1);
[z,p,k,n,d]=zpklp2bsc(0.3,7,[0.5,0.9],0.1,[0.1,0.4]);
// !--error 10000 
//K must be a scalar
//at line      57 of function zpklp2bsc called by :  
//[z,p,k,n,d]=zpklp2bsc(0.3,0.2,[0.5.6],0.4,[0.1,0.4])
