// Test #2 : Excess Input Arguments
exec('./iirpowcomp.sci',-1);
[b,p]=iirpowcomp(3.33,0.444,90,9);
//!--error 10000 
//2/3 input arguments allowed
//at line      33 of function iirpowcomp called by :  
//[b,p]=iirpowcomp(3.33,0.444,90,9)
