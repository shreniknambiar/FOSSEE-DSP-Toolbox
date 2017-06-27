// Test # 10 : Valid input test case #2
exec('./allpasslp2bp.sci',-1);
[n,d]=allpasslp2bp(0.23,[0.22,0.48]);
disp(d);
disp(n);
//
//Scilab Output
//d=1.                  -0.4611906      -0.0676902  
//n=0.0676902     0.4611906       -1. 

//Matlab Output
//n=0.0677         0.4612       -1.0000 
//d=1.0000         -0.4612     -0.0677
