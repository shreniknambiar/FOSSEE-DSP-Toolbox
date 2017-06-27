// Test # 10 : Valid input test case #2
exec('./allpasslp2bpc.sci',-1);
[n,d]=allpasslp2bpc(0.17,[0.9,0.95]);
disp(d);
disp(n);
//
//Scilab Output
//d=1.                      0.7281417 - 0.1748114i  
//n=-0.7488320      -0.9723699 + 0.2334454i  

//Matlab Output
//n= -0.7488 + 0.0000i      -0.9724 + 0.2334i
//d=  1.0000 + 0.0000i        0.7281 - 0.1748i
