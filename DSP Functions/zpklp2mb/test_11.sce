// Test #11 : For complex vector inputs
exec('./zpklp2mb.sci',-1);
[z,p,k,n,d]=zpklp2mb([2*%i,4*%i],[4*%i,7.6*%i],1,0.2,[0.3 0.4]);
disp(d);
disp(n);
disp(k);
disp(p);
disp(z);
//
//Scilab Output
//d=1.  - 0.8743054    0.9021130  
//n=-0.9021130    0.8743054  - 1.  
//k=0.2733954 - 0.0862473i  
//p=0.4602843 + 0.8380684i  
//    0.4186129 - 0.8584286i  
//    0.4492345 + 0.8391150i  
//    0.4263890 - 0.8502195i  
//z=0.4809243 + 0.8426991i  
//    0.4094194 - 0.8782564i  
//    0.4602843 + 0.8380684i  
//    0.4186129 - 0.8584286i 
//
//Matlab Output
//z = 0.4809 + 0.8427i 
//      0.4094 - 0.8783i 
//      0.4603 + 0.8381i 
//      0.4186 - 0.8584i 
//p = 0.4603 + 0.8381i 
//      0.4186 - 0.8584i 
//      0.4492 + 0.8391i 
//      0.4264 - 0.8502i 
//k = 0.2734 - 0.0862i 
//n = -0.9021  0.8743     -1.0000 
//d = 1.0000   -0.8743    0.9021
