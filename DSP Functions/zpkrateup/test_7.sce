// Test #5 :For Input Argument #4 of type double
exec('./allpassrateup.sci',-1);
[z,p,k,n,d]=allpassrateup(9,4,5,6.4);
//N must be an integer
//at line      45 of function zpkrateup called by :  
//[z,p,k,n,d]=zpkrateup(9,4,5,6.4);
