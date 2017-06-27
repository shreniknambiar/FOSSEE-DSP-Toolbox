// Test #10 : Valid input test case #2
exec('./allpasslp2bsc.sci',-1);
[n,d]=allpasslp2bsc(0.786,[0.549,0.8746]);
disp(d);
disp(n);
//
//Scilab Output
//d=1.                  0.0888982 - 0.1132783i  
//n=0.1439960    0.6173655 - 0.7866765i  
//
//Matlab Output
//n=  0.1440 + 0.0000i      0.6174 - 0.7867i
//d= 1.0000 + 0.0000i       0.0889 - 0.1133i
