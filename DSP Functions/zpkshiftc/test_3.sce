// Test # 3 : Checking the type for Input Argument #3 
exec('./zpkshiftc.sci',-1);
[z,p,k,n,d]=zpkshiftc(0.3,0.2,[0.4 0.8],0.5,0.6);
// !--error 10000 
//K must be a scalar
//at line      56 of function zpkshiftc called by :  
//[z,p,k,n,d]=zpkshiftc(0.3,0.2,[0.4 0.8],0.5,0.6);
