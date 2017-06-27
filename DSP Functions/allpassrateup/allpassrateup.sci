function [AllpassNum,AllpassDen] = allpassrateup(N)
// Allpass filter for integer upsample transformation
//
//Calling Sequence:
//[AllpassNum,AllpassDen] = allpassrateup(N) returns the numerator, AllpassNum, and the denominator, AllpassDen, of the Nth-order allpass mapping filter for performing the rateup frequency transformation, which creates N equal replicas of the prototype filter frequency response.
//
//Input Parameters:
//                      N: Upsampling ratio
//
//Output Parameters:
//                      AllpassNum: Numerator of mapping filer
//                      AllpassDen: Denominator of mapping filter
//Example: Design the allpass filter creating the effect of upsampling the digital filter four times:
//
//                  N = 4;
//                  Wo = 0.2; Wt = Wo/N + 2*[0:N-1]/N;
//                  [AllpassNum, AllpassDen] = allpassrateup(N)
//
//Author: Shrenik Nambiar
//
//References: 1. Constantinides, A.G., "Spectral transformations for digital filters," IEEE® Proceedings, vol. 117, no. 8, pp. 1585-1590, August 1970.
//
// Input Validation Statements 
    if argn(2) ~=1 then
        error("Number of input arguments should be 1");
    end
    
    if argn(1) <1 |argn(1)>2 then
        error("Number of output arguments should either be 1 or 2");
    end
    
    if ~isscalar(N) | ~isreal(N) | N<0 then
        error("N must be real and positive scalar");
    end
    
    if round(N)~=N & type(N) ~=8 then
        error("N must be an integer");
    end

//Calculating the numerator and denominator for the mapping filter
    AllpassDen = [1 zeros(1,N)];
    AllpassNum = [zeros(1,N) 1];
    
endfunction
