// Test # 10 : Valid input test case #2
exec('./allpassbpc2bpc.sci',-1);
[n,d]=allpassbpc2bpc([-0.3,-0.112],[-0.42,0.68]);
disp(d);
disp(n);
//
//Scilab Output
//d=1.                                                  0.7108650 + 0.3076188i  
//n=   0.6179475 + 0.4670110i           0.4927273 + 0.8701838i  
//
//Matlab Output
//n= 0.6179 + 0.4670i       0.4927 + 0.8702i
//d= 1.0000 + 0.0000i       0.7109 + 0.3076i
