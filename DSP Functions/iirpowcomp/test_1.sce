// Test # 1 : No Input Arguments
exec('./iirpowcomp.sci',-1);
[b,p]=iirpowcomp();
//!--error 10000 
//2/3 input arguments allowed
//at line      33 of function iirpowcomp called by :  
//[b,p]=iirpowcomp()
