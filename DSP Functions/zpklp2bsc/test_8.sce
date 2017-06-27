// Test #8 : When output arguments are less than 5
exec('./zpklp2bsc.sci',-1);
[z,p,k]=zpklp2bsc(2,8,5.4,0.5,[0.12,0.7]);
disp(k);
disp(p);
disp(z);
//
//Scilab Output
//k= 1.1689223  
//p= 0.0633576 + 0.2180784i  
//z= -0.0530585 - 0.1826287i 
//
//Matlab Output
//z-0.0531 - 0.1826i
//p=0.0634 + 0.2181i
//k=1.1689
