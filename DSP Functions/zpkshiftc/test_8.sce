// Test #8 : When output arguments are less than 5
exec('./zpkshiftc.sci',-1);
[z,p,k]=zpkshiftc(1,5.1,7,-0.5,0.79);
disp(k);
disp(p);
disp(z);
//
//Scilab Output
//k=1.104035 - 0.8154739i
//p=- 0.1201779 - 0.1549324i  
//z=- 0.6129071 - 0.7901550i
//
//Matlab Output
//z=-0.6129 - 0.7902i
//p=-0.1202 - 0.1549i 
//k=1.1040 - 0.8155i
