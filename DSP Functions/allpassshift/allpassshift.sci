function [AllpassNum,AllpassDen] = allpassshift(Wo,Wt)
// Allpass filter for real shift transformation
//
//Calling Sequence:
//[AllpassNum,AllpassDen] = allpassshift(Wo,Wt) returns the numerator, AllpassNum, and the denominator, AllpassDen, of the second-order allpass mapping filter for performing a real frequency shift transformation. This transformation places one selected feature of an original filter, located at frequency Wo, at the required target frequency location, Wt. This transformation implements the "DC mobility," which means that the Nyquist feature stays at Nyquist, but the DC feature moves to a location dependent on the selection of Wo and Wt.
//
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
//                  [AllpassNum, AllpassDen] = allpassshift(Wo, Wt)
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
    if Wo<=0 | Wo>=1 then
        error("Wo must lie between 0 and 1");
    end
    
    if ~isscalar(Wt) | ~isreal(Wt) then
        error("Wt must be real,numeric and scalar");
    end
    if Wt<=0 | Wt>=1 then
        error("Wt must lie between 0 and 1");
    end

//Calculating the numerator and denominator for the mapping filter
    be = cos(%pi*(Wo/2-Wt));
    if abs(be) < 1.0,
        be = be/ cos(%pi*Wo/2);
    else
        be = sin(%pi*(Wo/2-Wt)) / sin(%pi*Wo/2);
    end
    
    AllpassDen = [1 -be 0];
    AllpassNum = [0 be -1];

endfunction
