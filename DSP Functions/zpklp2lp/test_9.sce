// Test #9 : Valid Input case #1
exec('./zpklp2lp.sci',-1);
[z,p,k,n,d]=zpklp2lp(1,9,2,0.4,0.8);
disp(d);
disp(n);
disp(k);
disp(p);
disp(z);
//
//Scilab Output
//d=1.                  0.6180340  
//n=0.6180340    1.  
//k=0.0911400  
//p=-0.5443002  
//z=1. 
//
//Matlab Output
//d=1.0000          0.6180  
//n=0.6180          1.0000  
//k=0.0911  
//p=-0.5443  
//z=1.0000
