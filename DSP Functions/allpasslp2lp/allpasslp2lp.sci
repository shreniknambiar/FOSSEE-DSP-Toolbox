function [AllpassNum,AllpassDen] = allpasslp2lp(Wo,Wt)
// Allpass filter for lowpass to lowpass transformation
//
//Calling Sequence:
//[AllpassNum,AllpassDen] = allpasslp2lp(Wo,Wt) returns the numerator, AllpassNum, and the denominator, AllpassDen, of the first-order allpass mapping filter for performing a real lowpass to real lowpass frequency transformation. This transformation effectively places one feature of an original filter, located originally at frequency Wo, at the required target frequency location, Wt.
//
//Input Parameters:
//                      Wo: Frequency value of the prototype filter
//                      Wt: Desired Frequencies for the target filter
//
//Output Parameters:
//                      AllpassNum: Numerator of mapping filer
//                      AllpassDen: Denominator of mapping filter
//Example: Design the allpass filter changing the lowpass filter cutoff frequency originally at Wo=0.5 to Wt=0.35. Plot the phase response normalized to pi, which is in effect the mapping function Wo(Wt). 
//
//                  Wo = 0.5; Wt =0.35;
//                  [AllpassNum, AllpassDen] = allpasslp2lp(Wo, Wt);
//                  [h, f] = freqz(AllpassNum, AllpassDen);
//                  plot(f/%pi,-angle(h)/%pi);
//
//Author: Shrenik Nambiar
//
//References: 1. Constantinides, A.G., "Spectral transformations for digital filters," IEEE® Proceedings, vol. 117, no. 8, pp. 1585-1590, August 1970.
//                  2. Constantinides, A.G., "Design of bandpass digital filters," IEEE Proceedings, vol. 1, pp. 1129-1231, June 1969.
//
// Input Validation Statement
    if argn(2) ~=2 then
        error("Number of input arguments should be 2");
    end
    
    if argn(1) <1 | argn(1) >2 then
        error("Number of output arguments should either be 1 or 2");
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
    al = sin(%pi*(Wo-Wt)/2) / sin(%pi*(Wo+Wt)/2);
    AllpassNum = [-al 1];
    AllpassDen = [1 -al];

endfunction
