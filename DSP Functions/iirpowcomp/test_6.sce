// Test #6 : Valid Input Arguments #2
exec('./iirpowcomp.sci',-1);
[b,a]=iirpowcomp([0.0916,0.2749,0.2749,0.0916],[1.0000,-0.7601,0.7021,-0.2088])
disp(a);
disp(b);
//Scilab Output
//
//a= 1.         -0.7601     0.7021      -0.2088  
//b= 0.4660371  -0.8695094  0.8695094   -0.4660371  
//
//Matlab Output
//b = 0.4661   -0.8695    0.8695   -0.4661
//a = 1.0000   -0.7601    0.7021   -0.2088