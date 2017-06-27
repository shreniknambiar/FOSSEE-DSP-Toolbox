// Test # 10 : For 1 output argument
exec('./allpasslp2mb.sci',-1);
[n]=allpasslp2mb(0.3,[0.434,.731]);
disp(n);
//
//Scilab Output
//n=- 0.5915977  - 0.4567161  - 1.
//
//Matlab Output
//n= -0.5916 -0.4567 -1.0000
