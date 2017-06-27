// Test # 14 : Valid input test case with flag
exec('./allpasslp2mb.sci',-1);
[n,d]=allpasslp2mb(0.21,[0.42,0.51,0.85],'stop');
disp(d);
disp(n);
//
//Scilab Output
//d=1.                  0.6936787    0.7879411    0.7612510  
//n=0.7612510    0.7879411    0.6936787    1.
//
//Matlab Output
//d = 1.0000     0.6937     0.7879  0.7613
//n = 0.7613     0.7879     0.6937  1.0000 
