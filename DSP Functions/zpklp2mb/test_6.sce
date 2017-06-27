// Test # 6 : Range test for Input Argument #4 or Input Argument #5
exec('./zpklp2mb.sci',-1);
[z,p,k,n,d]=zpklp2mb(0.2,1,4,4,0.7);
//!--error 10000
//Wo must lie between 0 and 1
//at line      48 of function zpklp2mb called by :  
//[z,p,k,n,d]=zpklp2mb(0.2,1,4,4,0.7);
