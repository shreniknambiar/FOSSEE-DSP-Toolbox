// Test #3 : Incorect output Arguments
exec('./iirpowcomp.sci',-1);
[b,p,s]=iirpowcomp(3.2,3.4,%i);
//!--error 10000 
//!--error 59 
//Wrong number of output arguments.
