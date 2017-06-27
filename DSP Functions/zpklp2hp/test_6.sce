// Test # 6 : Range test for Input Argument #4 or Input Argument #5
exec('./zpklp2hp.sci',-1);
[z,p,k,n,d]=zpklp2hp(2,3,4,0.4,7);
//!--error 10000
//Wt must lie between 0 and 1
//at line      53 of function zpklp2hp called by :  
//[z,p,k,n,d]=zpklp2hp(2,3,4,0.4,7);
