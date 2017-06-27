function [AllpassNum,AllpassDen]= allpasslp2mb (Wo,Wt,varargin)
// Allpass filter for lowpass to M-band transfomation
//
//Calling Sequence:
//[AllpassNum,AllpassDen] = allpasslp2mb(Wo,Wt) returns the numerator, AllpassNum, and the denominator, AllpassDen, of the Mth-order allpass mapping filter for performing a real lowpass to real multipassband frequency transformation. Parameter M is the number of times an original feature is replicated in the target filter. This transformation effectively places one feature of an original filter, located at frequency Wo, at the required target frequency locations, Wt1,...,WtM.
//
//[AllpassNum,AllpassDen] = allpasslp2mb(Wo,Wt,P) allows you to specify an additional parameter, Pass, which chooses between using the "DC Mobility" and the "Nyquist Mobility." In the first case the Nyquist feature stays at its original location and the DC feature is free to move. In the second case the DC feature is kept at an original frequency and the Nyquist feature is movable.

//Input Parameters:
//                      Wo: Frequency value of the prototype filter
//                      Wt: Desired Frequencies for the target filter
//                      P: Choice ('pass'/'stop') of passband/stopband at DC, 'pass' being the default
//Output Parameters:
//                      AllpassNum: Numerator of mapping filer
//                      AllpassDen: Denominator of mapping filter
//Example: Design the allpass filter changing the real lowpass filter with the cutoff frequency of Wo=0.5 into a real multiband filter with band edges of Wt=[2:3:8]/10 precisely defined. Plot the phase response normalized to pi, which is in effect the mapping function Wo(Wt)
//
//                  Wo = 0.5; Wt =[0.2:0.3:0.8];
//                  [AllpassNum, AllpassDen] = allpasslp2lp(Wo, Wt);
//                  [h, f] = freqz(AllpassNum, AllpassDen);
//                  plot(f/%pi,-angle(h)/%pi);
//
//Author: Shrenik Nambiar
//
//References: 1. Franchitti, J.C., "All-pass filter interpolation and frequency transformation problems,"MSc Thesis, Dept. of Electrical and Computer Engineering, University of Colorado, 1985.
//                  2. Feyh, G., J.C. Franchitti and C.T. Mullis, "All-pass filter interpolation and frequency transformation problem," Proceedings 20th Asilomar Conference on Signals, Systems and Computers, Pacific Grove, California, pp. 164-168, November 1986.
//
// Input Validation Statements 
    if argn(2) <2 | argn(2) >3 then
        error("Number of input arguments should either 2 or 3");
    end
    
    if argn(1) <1 | argn(1)>2 then
        error("Number of output arguments should either be 1 or 2");
    end
    
    if ~isscalar(Wo) | ~isreal(Wo) then
        error("Wo must be real ,numeric and scalar");
    end
    if Wo<=0 | Wo>=1 then
        error("Wo must lie between 0 and 1");
    end
    
    if ~isvector(Wt) | ~isreal(Wt) then
        error("Wt must be vector and real");
    end
    
    for i= 1:length(Wt)
        if Wt(i) <=0 | Wt(i) >=1 then
            error("Wt must be in normalised form");
        end
    end
    
    if (length(varargin)==1) & (type(varargin(1))~=10) then
        error("Input argument #3 must be of type char");
    end
    
    if length(varargin)==0 then
        pass= -1;           //pass being the default option
    else
        P=varargin(1);
        select P
        case 'pass' then
            pass=-1;
        case 'stop' then
            pass=1;
        else
            error("Invalid option,input should be either pass or stop");
        end
    end
    l=length(Wt);
//Calculating the numerator and denominator for the mapping filter
    Wold =%pi * Wo * (-1).^(0:l-1);
    Wnew =%pi * Wt(:).';
    al=sin(Wnew.'/2 * (l-2:-2:-l) -Wold.'/2*ones(1,l));
    AllpassDen =[1 -sin(l*Wnew/2-Wold/2)/al'];
    AllpassNum = (flipdim(AllpassDen,2))*pass;
    
endfunction






