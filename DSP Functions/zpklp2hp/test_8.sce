// Test #8 : When output arguments are less than 5
exec('./zpklp2hp.sci',-1);
[z,p,k]=zpklp2hp(2,3,4,0.4,0.9);
disp(k);
disp(p);
disp(z);
//
//Scilab Output
//k=2.9017143  
//p=- 0.8034286  
//z=- 0.8645136 
//
//Matlab Output
//z = -0.8645
//p = -0.8034 
//k = 2.9017
