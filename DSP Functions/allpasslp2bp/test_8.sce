// Test # 8 : Input Argument #1 or #2 length test
exec('./allpasslp2bp.sci',-1);
[n,d]=allpasslp2bp([0.3,0.2],[0.6,0.8]);
//!--error 10000
//Wo must be real ,numeric and scalar
//at line      36 of function allpasslp2bp called by :  
//[n,d]=allpasslp2bp([0.3,0.2],[0.6,0.8]);
