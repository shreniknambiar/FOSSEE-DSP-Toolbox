// Test # 2 : Excess Input Arguments
exec('./zpklp2mb.sci',-1);
[z,p,k,n,d]=zpklp2mb(0.3,0.2,0.7,0.5,0.6,'pass',3);
// !--error 10000 
//Number of input arguments should either be 5 or 6
//at line      37 of function zpklp2mb called by :  
//zpklp2mb(0.2,0.7,0.5,0.6,'pass',3);
