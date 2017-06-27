// Test #10 : For vector inputs
exec('./zpklp2mb.sci',-1);
[z,p,k,n,d]=zpklp2mb([1,7],[8,10],6,0.6,[0.3,0.4,0.5]);
disp(d);
disp(n);
disp(k);
disp(p);
disp(z);
//
//Scilab Output
//d=1.                - 0.8968022    1.093096       -0.3090170  
//n=0.3090170  - 1.093096       0.8968022     -1.  
//k=0.3721850  
//p=0.2886874 + 0.9021628i  
//    0.2886874 - 0.9021628i  
//    0.2133332               
//    0.2862009 + 0.9033321i  
//    0.2862009 - 0.9033321i  
//    0.2402018               
//z  =-1.                      
//    0.3579605 + 0.9337367i  
//    0.3579605 - 0.9337367i  
//    0.2905218 + 0.9014069i  
//    0.2905218 - 0.9014069i  
//    0.1938082
//
//Matlab Output
//z = -1.0000 + 0.0000i 
//       0.3580 + 0.9337i 
//      0.3580 - 0.9337i 
//      0.2905 + 0.9014i 
//      0.2905 - 0.9014i 
//      0.1938 + 0.0000i 
//p = 0.2887 + 0.9022i 
//      0.2887 - 0.9022i 
//      0.2133 + 0.0000i 
//      0.2862 + 0.9033i 
//      0.2862 - 0.9033i 
//      0.2402 + 0.0000i 
//k = 0.3722 
//n = 0.3090    -1.0931     0.8968   -1.0000
//d = 1.0000    -0.8968     1.0931   -0.3090