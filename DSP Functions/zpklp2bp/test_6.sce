// Test # 6 : Range test for Input Argument #4 or Input Argument #5
exec('./zpklp2bp.sci',-1);
[z,p,k,n,d]=zpklp2bp(7.3,5.2,9.7,0.6,[4,0.8]);
//!--error 10000
//Wt must lie between 0 and 1
//at line      53 of function zpklp2bp called by :  
//[z,p,k,n,d]=zpklp2bp(7.3,5.2,9.7,0.6,[4,0.8]);
