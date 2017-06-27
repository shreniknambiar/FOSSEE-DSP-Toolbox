// Test #8 : When output arguments are less than 5
exec('./zpkshift.sci',-1);
[z,p,k]=zpkshift(4.1,9.1,1,0.1,0.5);
disp(k);
disp(p);
disp(z);
//
//Scilab Output
//k=0.4505495  
//p=0.0878947 + 0.3196320i  
//       0.0878947 - 0.3196320i  
//z=0.0985074 + 0.4839408i  
//    0.0985074 - 0.4839408i  
//
//Matlab Output
//z = 0.0985 + 0.4839i 
//      0.0985 - 0.4839i 
//p = 0.0879 + 0.3196i
//       0.0879 - 0.3196i 
//k = 0.4505
