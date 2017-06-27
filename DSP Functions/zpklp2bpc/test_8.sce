// Test #8 : When output arguments are less than 5
exec('./zpklp2bpc.sci',-1);
[z,p,k]=zpklp2bpc(2.3*%i,[4.2,%i],3,0.3,[0.12,0.34]);
disp(k);
disp(p);
disp(z);
//
//Scilab Output
//k=-1.310438 - 0.3284784i  
//p=0.4889351 + 0.4310543i  
//    0.9980440 + 0.0625157i  
//z=0.6269358 + 0.1312146i 
//
//Matlab Output
//z=0.6269 + 0.1312i 
//p=  0.4889 + 0.4311i 
//      0.9980 + 0.0625i
//k= -1.3104 - 0.3285i
