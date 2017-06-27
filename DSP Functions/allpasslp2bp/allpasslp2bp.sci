function [AllpassNum,AllpassDen]= allpasslp2bp (Wo,Wt)
// All pass filter for lowpass to bandpass transformation
//
//Calling Sequence:
//[[AllpassNum,AllpassDen] = allpasslp2bp(Wo,Wt): returns the numerator, AllpassNum, and the denominator, AllpassDen, of the second order allpass mapping filter for performing a real lowpass to real bandpass frequency transformation. This transformation effectively places one feature of an original filter, located at frequency -Wo, at the required target frequency location, Wt1, and the second feature, originally at +Wo, at the new location, Wt2. This transformation implements the "DC mobility," which means that the Nyquist feature stays at Nyquist, but the DC feature moves to a location dependent on the selection of Wt.
//
//Input Parameters:
//                      Wo: Frequency value of the prototype filter
//                      Wt: Desired Frequencies for the target filter
//
//Output Parameters:
//                      AllpassNum: Numerator of mapping filer
//                      AllpassDen: Denominator of mapping filter
//Example: Design the allpass mapping filter changing the lowpass filter with cutoff frequency at Wo=0.4 to the real–valued bandpass filter with cutoff frequencies at Wt1=0.2 and Wt2=0.3.
//
//                  Wo = 0.4; Wt = [0.2 0.3];
//                  [AllpassNum, AllpassDen] = allpasslp2bp(Wo, Wt);
//                  [h, f] = freqz(AllpassNum, AllpassDen);
//                  plot(f/%pi,-angle(h)/%pi);
//
//Author: Shrenik Nambiar
//
//References: 1. Constantinides, A.G., "Spectral transformations for digital filters," IEEE® Proceedings, vol. 117, no. 8, pp. 1585-1590, August 1970.
//                  2. Constantinides, A.G., "Design of bandpass digital filters," IEEE Proceedings, vol. 1, pp. 1129-1231, June 1969.
//
// Input Validation Statements 
    if argn(2) ~=2 then
        error("Number of input arguments should be 2");
    end
    
    if argn(1)<1 | argn(1)>2 then
        error("Number of output arguments should either be 1 or 2");
    end
    
    if ~isscalar(Wo) | ~isreal(Wo) then
        error("Wo must be real ,numeric and scalar");
    end
    if Wo<=0 | Wo>=1 then
        error("Wo must lie between 0 and 1");
    end
    
    if length(Wt)~=2 | ~isreal(Wt) then
        error("Wt must be real and numeric and must contain only 2 elements");
    end
    if Wt(1)<=0 | Wt(1)>=1 | Wt(2)<=0 | Wt(2)>=1 then
        error("Wt must lie between 0 and 1");
    end

//Calculating the numerator and denominator for the mapping filter
    bw = abs(Wt(2) - Wt(1));
    al = sin(%pi*(Wo-bw)/2) / sin(%pi*(Wo+bw)/2);
    be= cos(%pi*sum(Wt)/2) / cos(%pi*bw/2);
    AllpassNum = -[al -be*(1+al) 1];
    AllpassDen = -flipdim(AllpassNum,2);

endfunction
