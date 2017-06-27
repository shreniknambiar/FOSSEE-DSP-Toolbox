// Test # 2 : Excess Input Arguments
exec('./zpkshift.sci',-1);
[z,p,k,n,d]=zpkshift(0.3,0.2,0.7,0.5,0.6,4);
//!--error 58
//Wrong number of input arguments
