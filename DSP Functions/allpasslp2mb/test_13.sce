// Test # 13 : Valid input test case #2
exec('./allpasslp2mb.sci',-1);
[n,d]=allpasslp2mb(0.53,[0.32,0.21,0.65]);
disp(d);
disp(n);
//
//Scilab Output
//d=    1.                    - 1.4218628    0.8259669    0.3936125  
//n =- 0.3936125      - 0.8259669     1.4218628   - 1.
//
//Matlab Output
//d = 1.0000      -1.4219    0.8260         0.3936
//n = -0.3936    -0.8260    1.4219        -1.0000 
