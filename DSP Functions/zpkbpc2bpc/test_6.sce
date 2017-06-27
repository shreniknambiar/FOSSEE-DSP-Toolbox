// Test # 6 : Range test for Input Argument #4 or Input Argument #5
exec('./zpkbpc2bpc.sci',-1);
[z,p,k,n,d]=zpkbpc2bpc(7.3,5.2,9.7,[-0.9,0.6],[4,0.8]);
//!--error 10000
//Wt must lie between -1 and 1
//at line      55 of function zpkbpc2bpc called by :
//[z,p,k,n,d]=zpkbpc2bpc(7.3,5.2,9.7,[-0.9,0.6],[4,0.8]);
