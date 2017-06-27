// Test #8 : When output arguments are less than 5
exec('./zpklp2bp.sci',-1);
[z,p,k]=zpklp2bp(4*%i,2.2,1,0.2,[0.12,0.34]);
disp(k);
disp(p);
disp(z);
//
//Scilab Output
//k=- 0.0238505 + 1.8615464i  
//p=0.5632188 + 0.3093542i  
//     0.5632188 - 0.3093542i  
//z=0.8470602 + 0.0860862i  
//     -0.0932210 - 0.2848409i  
//
//Matlab Output
//z=   0.8471 + 0.0861i 
//      -0.0932 - 0.2848i 
//p =  0.5632 + 0.3094i
//       0.5632 - 0.3094i 
//k = -0.0239 + 1.8615i
