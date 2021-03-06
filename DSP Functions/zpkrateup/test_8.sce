// Test #9 : Valid vector inputs
exec('./zpkrateup.sci',-1);
[z,p,k,n,d]=zpkrateup([6.3,7.5],[1.4,4.2],9.8,3);
disp(d);
disp(n);
disp(k);
disp(p);
disp(z);
//
//Scilab Output
//d=1.    0.    0.    0.  
//n=0.    0.    0.    1.  
//k=    78.75  
//p=    -0.4469518 + 0.7741432i  
//         -0.4469518 - 0.7741432i  
//          0.8939035               
//        -0.3098990 + 0.5367609i  
//        -0.3098990 - 0.5367609i  
//          0.6197981               
//z=    -0.2707218 + 0.4689038i  
//         -0.2707218 - 0.4689038i  
//          0.5414435               
//          -0.2554365 + 0.4424290i  
//          -0.2554365 - 0.4424290i  
//          0.5108730  
//
//Matlab Output
//z=  -0.2707 + 0.4689i
//      -0.2707 - 0.4689i 
//        0.5414 + 0.0000i
//       -0.2554 + 0.4424i 
//       -0.2554 - 0.4424i
//        0.5109 + 0.0000i 
//p=    -0.4470 + 0.7741i
//         -0.4470 - 0.7741i 
//          0.8939 + 0.0000i
//         -0.3099 + 0.5368i 
//         -0.3099 - 0.5368i
//          0.6198 + 0.0000i 
//k = 78.7500
//n = 0     0   0   1 
//d = 1     0   0   0





