// Test # 6 : Range test for Input Argument #4 or Input Argument #5
exec('./zpklp2bpc.sci',-1);
[z,p,k,n,d]=zpklp2bpc(7.3,5.2,7,0.62,[0.4,3.8]);
//!--error 10000
//Wt must lie between 0 and 1
//at line      53 of function zpklp2bpc called by :  
//[z,p,k,n,d]=zpklp2bpc(7.3,5.2,7,0.62,[0.4,3.8]);
