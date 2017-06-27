// Test #8 : When output arguments are less than 5
exec('./zpkbpc2bpc.sci',-1);
[z,p,k]=zpkbpc2bpc(4,2.2,1,[0.5,0.6],[-0.8,0.34]);
disp(k);
disp(p);
disp(z);
//
//Scilab Output
//k=    1.4967554 + 0.3078635i  
//p=    -0.7456261 + 0.5534776i  
//z=    -0.8709140 + 0.6869281i 
//
//Matlab Output
//z=-0.8709 + 0.6869i
//p= -0.7456 + 0.5535i
//k = 1.4968 + 0.3079i
