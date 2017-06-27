// Test #7 : Valid Input Arguments #3 with 3 inputs
exec('./iirpowcomp.sci',-1);
[b,a]=iirpowcomp([0.0916,0.2749,0.2749,0.0916],[1.0000,-0.7601,0.7021,-0.2088],%i)
disp(a);
disp(b);
//Scilab Output
//
//a= 1.  - 0.7601    0.7021  - 0.2088  
//b= 0.3295380 + 0.3295380i  
//  - 0.6148360 - 0.6148360i  
//    0.6148360 + 0.6148360i  
//  - 0.3295380 - 0.3295380i 
//
//Matlab Output
//b =0.3295 + 0.3295i
//  -0.6148 - 0.6148i
//   0.6148 + 0.6148i
//  -0.3295 - 0.3295i
//a = 1.0000   -0.7601    0.7021   -0.2088