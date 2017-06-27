// Test #10 : Valid input test case #2
exec('./allpasslp2bs.sci',-1);
[n,d]=allpasslp2bs(0.23,[0.2,0.67]);
disp(d);
disp(n);
//
//Scilab Output
//d=1.                 -0.4080468    0.4882792  
//n=0.4882792   - 0.4080468    1. 

//Matlab Output
//n= 0.4883         -0.4080         1.0000 
//d= 1.0000         -0.4080         0.4883
