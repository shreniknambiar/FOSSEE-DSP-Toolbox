// Test #9 : For vector inputs
exec('./zpklp2hp.sci',-1);
[z,p,k,n,d]=zpklp2hp([2,4],[1,7.2],8,0.32,0.67);
disp(d);
disp(n);
disp(k);
disp(p);
disp(z);
//
//Scilab Output
//d=1.                  -0.0184220  
//n=0.0184220    -1.
//k=8.9538886  
//p=- 1.                - 0.1207759  
//z=- 0.4860551   - 0.2326495 
//
//Matlab Output
//z = -0.4861   -0.2326
//p = -1.0000   -0.1208
//k = 8.9539 
//n = 0.0184    -1.0000 
//d = 1.0000    -0.0184
