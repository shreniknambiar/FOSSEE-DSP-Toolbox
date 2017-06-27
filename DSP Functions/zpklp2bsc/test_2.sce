// Test # 2 : Excess Input Arguments
exec('./zpklp2bsc.sci',-1);
[z,p,k,n,d]=zpklp2bsc(0.1,0.2,0.7,0.6,[0.5,0.9],12);
//!--error 58
//Wrong number of input arguments
