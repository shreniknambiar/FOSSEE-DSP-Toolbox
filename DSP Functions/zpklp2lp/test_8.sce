// Test #8 : When output arguments are less than 5
exec('./zpklp2lp.sci',-1);
[z,p,k]=zpklp2lp(4,0.9,8,0.1,0.5);
disp(k);
disp(p);
disp(z);
//
//Scilab Output
//k=- 75.662446
//p=0.5011603
//z=-0.5823109
//
//Matlab Output
//z= -0.5823
//p= 0.5012
//k= -75.6624
