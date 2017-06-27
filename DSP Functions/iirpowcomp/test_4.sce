// Test #2 :  Zero inputs
exec('./iirpowcomp.sci',-1);
[b,p]=iirpowcomp(0,0);
// !--error 10000 
//Order should be greater than 1 
//at line      54 of function iirpowcomp called by :  
//[b,p]=iirpowcomp(0,0)
