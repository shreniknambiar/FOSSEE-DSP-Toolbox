function [AllpassNum,AllpassDen]= allpasslp2bpc (Wo,Wt)
// All pass filter for lowpass to bandpass transformation
//
//Calling Sequence:
//[AllpassNum,AllpassDen] = allpasslp2bpc(Wo,Wt): returns the numerator, AllpassNum, and the denominator, AllpassDen, of the first-order allpass mapping filter for performing a real lowpass to complex bandpass frequency transformation. This transformation effectively places one feature of an original filter, located at frequency -Wo, at the required target frequency location, Wt1, and the second feature, originally at +Wo, at the new location, Wt2. It is assumed that Wt2 is greater than Wt1.
//
//Input Parameters:
//                      Wo: Frequency value of the prototype filter
//                      Wt: Desired Frequencies for the target filter
//
//Output Parameters:
//                      AllpassNum: Numerator of mapping filer
//                      AllpassDen: Denominator of mapping filter
//Example: Design the allpass mapping filter changing the lowpass filter with cutoff frequency at Wo=0.6 to the complex–valued bandpass filter with cutoff frequencies at Wt1=0.4 and Wt2=0.5.
//
//                  Wo = 0.6; Wt = [0.4 0.5];
//                  [AllpassNum, AllpassDen] = allpasslp2bpc(Wo, Wt);
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
        error("Wt must be real,numeric and must contain only 2 elements");
    end
    if Wt(1)<=0 | Wt(1)>=1 | Wt(2)<=0 | Wt(2)>=1 then
        error("Wt must lie between 0 and 1");
    end
    
//Calculating the numerator and denominator for the mapping filter
    Wc = sum(Wt)/2;
    bw = max(Wt) - min(Wt);
    al = sin(%pi*(Wo-bw/2)/2) / sin(%pi*(Wo+bw/2)/2);
    be= exp(-%pi*%i*Wc);
    AllpassNum = flipdim(conj([be -al]),2);
    AllpassDen = flipdim(conj([-al*be 1]),2);

endfunction
