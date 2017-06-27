function [AllpassNum,AllpassDen] = allpassshiftc(Wo,Wt)
// Allpass filter for complex shift transformation
//
//Calling Sequence:
//[AllpassNum,AllpassDen] = allpassshiftc(Wo,Wt) returns the numerator, AllpassNum, and denominator, AllpassDen, vectors of the allpass mapping filter for performing a complex frequency shift of the frequency response of the digital filter by an arbitrary amount.
//
//[AllpassNum,AllpassDen] = allpassshiftc(0,0.5) calculates the allpass filter for doing the Hilbert transformation, a 90 degree counterclockwise rotation of an original filter in the frequency domain.
//
//[AllpassNum,AllpassDen] = allpassshiftc(0,-0.5) calculates the allpass filter for doing an inverse Hilbert transformation, i.e. a 90 degree clockwise rotation of an original filter in the frequency domain.
//Input Parameters:
//                      Wo: Frequency value of the prototype filter
//                      Wt: Desired Frequencies for the target filter
//
//Output Parameters:
//                      AllpassNum: Numerator of mapping filer
//                      AllpassDen: Denominator of mapping filter
//Example: Design the allpass filter precisely shifting one feature of the lowpass filter originally at Wo=0.76 to the new frequencies of Wt=0.5:
//
//                  Wo = 0.76; Wt = 0.5;
//                  [AllpassNum, AllpassDen] = allpassshiftc(Wo, Wt)
//
//Author: Shrenik Nambiar
//
//References: 1. Constantinides, A.G., "Spectral transformations for digital filters," IEEE® Proceedings, vol. 117, no. 8, pp. 1585-1590, August 1970.
//
// Input Validation Statements 
    if argn(2) ~=2 then
        error("Number of input arguments should be 2");
    end
    
    if argn(1) <1 | argn(1)>2 then
        error("Number of output arguments should be 2");
    end
    
    if ~isscalar(Wo) | ~isreal(Wo) then
        error("Wo must be real ,numeric and scalar");
    end
    if Wo<=-1 | Wo>=1 then
        error("Wo must lie between -1 and 1");
    end
    
    if ~isscalar(Wt) | ~isreal(Wt) then
        error("Wt must be real,numeric and scalar ");
    end
    if Wt<=-1 | Wt>=1 then
        error("Wt must lie between -1 and 1");
    end
    
//Calculating the numerator and denominator for the mapping filter
    AllpassNum = [0 1]*exp(%pi*%i*(Wt-Wo));
    AllpassDen = [1 0];

endfunction
