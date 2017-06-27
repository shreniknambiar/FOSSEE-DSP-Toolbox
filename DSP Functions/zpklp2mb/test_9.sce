// Test #9 : When output arguments are less than 5
exec('./zpklp2mb.sci',-1);
[z,p,k]=zpklp2mb(4,9,3.5,0.1,[0.5,0.8]);
disp(k);
disp(p);
disp(z);
//
//Scilab Output
//k=1.7234676  
//p= -0.4786251 + 0.8059946i  
//      - 0.4786251 - 0.8059946i  
//z=  -0.4859934 + 0.8194156i  
//      - 0.4859934 - 0.8194156i 
//
//Matlab Output
//z = -0.4860 + 0.8194i 
//      -0.4860 - 0.8194i 
//p = -0.4786 + 0.8060i 
//       -0.4786 - 0.8060i
//k = 1.7235
