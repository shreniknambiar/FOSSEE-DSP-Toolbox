// Test # 9 : Valid input test case #1
exec('./allpasslp2bs.sci',-1);
[n,d]=allpasslp2bs(0.2,[0.9,0.98]);
disp(d);
disp(n);
//
//Scilab Output
//d=1.                  1.902113    0.9211430  
//n=0.9211430    1.902113    1.
//
//Matlab Output
//n=0.9211          1.9021          1.0000
//d=1.0000          1.9021          0.9211
