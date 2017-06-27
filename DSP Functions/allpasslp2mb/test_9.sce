// Test # 9 : Invalid flag test
exec('./allpasslp2mb.sci',-1);
[n,d]=allpasslp2mb(0.4,[0.3,0.4],'j');
//!--error 10000
//Invalid option,input should be either pass or stop
//at line      68 of function allpasslp2mb called by :  
//[n,d]=allpasslp2mb(0.4,[0.3,0.4],'j')
