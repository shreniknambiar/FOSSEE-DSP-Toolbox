// Test # 3 : Checking the type for Input Argument #3 
exec('./zpkshift.sci',-1);
[z,p,k,n,d]=zpkshift(0.3,0.2,[0.4 0.8],0.5,0.6);
// !--error 10000 
//K must be a scalar
//at line      58 of function zpkshift called by :  
//[z,p,k,n,d]=zpkshift(0.3,0.2,[0.4 0.8],0.5,0.6);
