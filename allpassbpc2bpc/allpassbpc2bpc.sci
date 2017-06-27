function [AllpassNum,AllpassDen]= allpassbpc2bpc (Wo,Wt)
// All pass filter for complex bandpass transformation
//
//Calling Sequence:
//[AllpassNum,AllpassDen]= allpassbpc2bpc (Wo,Wt): returns the numerator, AllpassNum, and the denominator, AllpassDen, of the first-order allpass mapping filter for performing a complex bandpass to complex bandpass frequency transformation. This transformation effectively places two features of an original filter, located at frequencies Wo1 and Wo2, at the required target frequency locations Wt1 and Wt2.In general it is possible to select any feature; e.g., the stopband edge, the DC,etc.
//
//Input Parameters:
//                      Wo: Frequency values of the prototype filter
//                      Wt: Desired Frequencies for the target filter
//
//Output Parameters:
//                      AllpassNum: Numerator of mapping filer
//                      AllpassDen: Denominator of mapping filter
//Example: Design an allpass mapping filter, changing the complex bandpass filter with the band edges at Wo1=0.3 and Wo2=0.6 to the new band edges of Wt1=0.4 and Wt2=0.8. Find the frequency response of the allpass mapping filter:
//
//                  Wo = [0.3 0.6]; Wt = [0.4 0.8];
//                  [AllpassNum, AllpassDen] = allpassbpc2bpc(Wo, Wt);
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
    
    if argn(1)<1 | argn(1)>2 then
        error("Number of output arguments should either be 1 or 2");
    end
    
    if length(Wo)~=2 | ~isreal(Wo) then
        error("Wo must be real, numeric and must contain only 2 elements");
    end
    if Wo(1)<=-1 | Wo(1)>=1 | Wo(2)<=-1 | Wo(2)>=1 then
        error("Wo must lie between -1 and 1");
    end
    
    if length(Wt)~=2 | ~isreal(Wt) then
        error("Wt must be real,numeric and must contain only 2 elements");
    end
    if Wt(1)<=-1 | Wt(1)>=1 | Wt(2)<=-1 | Wt(2)>=1 then
        error("Wt must lie between -1 and 1");
    end
    
// Calculating the numerator and denominator for the mapping filter

    bw1 = max(Wo) - min(Wo);
    bw2 = max(Wt) - min(Wt);
    be = sin(%pi*(bw1-bw2)/4)/sin(%pi*(bw1+bw2)/4);
    al= exp(-%i*%pi*sum(Wt)/2);
    AllpassNum = flipdim((conj([al -be] * exp(%i*%pi*sum(Wo)/2))),2);
    AllpassDen = flipdim((conj([-be*al 1])),2);
    
endfunction
