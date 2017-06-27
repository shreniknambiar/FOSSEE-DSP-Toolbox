//Test #8 : Wrong flag input
exec('./zpklp2mb.sci',-1);
//[z,p,k]=zpklp2mb(4,0.9,8,0.1,[0.5 0.6],'oi');
//!--error 10000 
//Invalid option,input should be either pass or stop
//at line      80 of function zpklp2mb called by :  
//[z,p,k]=zpklp2mb(4,0.9,8,0.1,[0.5 0.6],'oi');
