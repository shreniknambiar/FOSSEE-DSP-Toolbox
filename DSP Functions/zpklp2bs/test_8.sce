// Test #8 : When output arguments are less than 5
exec('./zpklp2bs.sci',-1);
[z,p,k]=zpklp2bs(2*%i,5*%i,7*%i,0.45,[0.2,0.87]);
disp(k);
disp(p);
disp(z);
//
//Scilab Output
//k= 0.1670254 + 2.8066528i  
//p= -0.5873267 + 0.1669898i  
//    0.4116470 - 0.2094615i  
//z=-0.7081146 + 0.3208781i  
//   0.5412291 - 0.4261818i 
//
//Matlab Output
//z=-0.7081 + 0.3209i
//   0.5412 - 0.4262i
//p=-0.5873 + 0.1670i
//   0.4116 - 0.2095i
//k= 0.1670 + 2.8067i
