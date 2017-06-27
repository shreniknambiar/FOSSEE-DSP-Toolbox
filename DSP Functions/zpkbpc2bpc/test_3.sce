// Test # 3 : Checking the type for Input Argument #3 
exec('./zpkbpc2bpc.sci',-1);
[z,p,k,n,d]=zpkbpc2bpc(0.3,0.2,[0.5,0.6],[0.4,0.8],[0.1,0.4]);
// !--error 10000 
//K must be a scalar
//at line      59 of function zpkbpc2bpc called by :  
//[z,p,k,n,d]=zpkbpc2bpc(0.3,0.2,[0.5.6],[0.4,0.8],[0.1,0.4])
