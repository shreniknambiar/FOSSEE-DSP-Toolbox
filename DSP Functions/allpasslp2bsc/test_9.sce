// Test # 9 : Valid input test case #1
exec('./allpasslp2bsc.sci',-1);
[n,d]=allpasslp2bsc(0.65,[0.34,0.56]);
disp(d);
disp(n);
//
//Scilab Output
//d=1.                  -0.0870805-0.5498046i  
//n=0.5566580    -0.1564345-0.9876883i   
//
//Matlab Output
//n=  0.5567 + 0.0000i          -0.1564 - 0.9877i 
//d= 1.0000 + 0.0000i           -0.0871 - 0.5498i
