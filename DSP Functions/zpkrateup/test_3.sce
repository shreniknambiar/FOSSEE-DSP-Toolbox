// Test # 3 : Checking the type for Input Argument #3 
exec('./zpkrateup.sci',-1);
[z,p,k,n,d]=zpkrateup(0.4,0.8,[5,0.4],6);
// !--error 10000 
//K must be a scalar
//at line      49 of function zpkrateup called by :  
//[z,p,k,n,d]=zpkrateup(0.4,0.8,[5,0.4],6);
