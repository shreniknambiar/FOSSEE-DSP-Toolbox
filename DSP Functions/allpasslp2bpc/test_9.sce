// Test # 9 : Valid input test case #1
exec('./allpasslp2bpc.sci',-1);
[n,d]=allpasslp2bpc(0.8,[0.426,0.633]);
disp(d);
disp(n);
//
//Scilab Output
//d=1.                       0.0831792 - 0.8949461i  
//n=-0.8988033      -0.0925444 + 0.9957086i 

//Matlab Output
//n= -0.8988 + 0.0000i      -0.0925 + 0.9957i
//d= 1.0000 + 0.0000i        0.0832 - 0.8949i
