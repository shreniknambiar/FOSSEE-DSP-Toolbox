// Test # 6 : Range test for Input Argument #4 or Input Argument #5
exec('./zpklp2bsc.sci',-1);
[z,p,k,n,d]=zpklp2bsc(7.3,5.2,9.7,2.9,[4,0.8]);
//!--error 10000
//Wo must lie between 0 and 1
//at line      46 of function zpklp2bsc called by :  
//[z,p,k,n,d]=zpklp2bsc(7.3,5.2,9.7,2.9,[4,0.8]);
