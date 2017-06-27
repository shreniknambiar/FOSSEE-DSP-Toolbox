// Test # 2 : Excess Input Arguments
exec('./zpklp2bpc.sci',-1);
[z,p,k,n,d]=zpklp2bpc(0.3,0.2,0.7,0.6,[0.4,0.8],12);
//!--error 58
//Wrong number of input arguments
