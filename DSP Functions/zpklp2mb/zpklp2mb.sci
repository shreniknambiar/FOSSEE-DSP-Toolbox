function [Z2, P2, K2, AllpassNum,AllpassDen]= zpklp2mb(Z, P ,K, Wo,Wt,varargin)
//Zero-pole-gain lowpass to M-band frequency transformation
//
//Calling Sequences
//
//[Z2,P2,K2,AllpassNum,AllpassDen] = zpklp2mb(Z,P,K,Wo,Wt) returns zeros, Z2, poles, P2, and gain factor, K2, of the target filter transformed from the real lowpass prototype by applying an Mth-order real lowpass to real multibandpass frequency mapping. By default the DC feature is kept at its original location.
//
//[Z2,P2,K2,AllpassNum,AllpassDen] = zpklp2mb(Z,P,K,Wo,Wt,Pass) allows you to specify an additional parameter, Pass, which chooses between using the "DC Mobility" and the "Nyquist Mobility". In the first case the Nyquist feature stays at its original location and the DC feature is free to move. In the second case the DC feature is kept at an original frequency and the Nyquist feature is allowed to move.It also returns the numerator, AllpassNum, and the denominator, AllpassDen, of the allpass mapping filter. The prototype lowpass filter is given with zeros, Z, poles, P, and gain factor, K.
//
//Input Parameters:
//                      Z: Zeros of the prototype filter
//                      P: Poles of the prototype filter
//                      K: Gain of the prototype filter
//                      Wo: Frequency value of the prototype filter to be transformed
//                      Wt: Desired frquency of the target filter
//                      Pass: Choice ('pass'/'stop') of passband/stopband at DC, 'pass' being the default
//Output Parameters:
//                      Z2: Zeros of the target filter
//                      P2: Poles of the target filter
//                      K2:Gain factor of the target filter
//                      AllpassNum: Numerator of the mapping filter
//                      AllpassDen: Denominator of the mapping filter
//Example: Design a prototype real IIR halfband filter using a standard elliptic approach
//
//                        [b, a] = ellip(3,0.1,30,0.409);
//                        z = roots(b);
//                        p = roots(a);
//                        k = b(1);
//                        [z1,p1,k1] = zpklp2mb(z, p, k, 0.5, [2 4 6 8]/10, 'pass');
//
//Author: Shrenik Nambiar
//
//References: 1. Franchitti, J.C., "All-pass filter interpolation and frequency transformation problems," MSc Thesis, Dept. of Electrical and Computer Engineering, University of Colorado, 1985
//
//Input Validaton Statement
    if argn(2)<5 | argn(2) >6 then
        error("Number of input arguments should either be 5 or 6");
    end
    
    if argn(1)<1 | argn(1)>5 then
        error("Number of output arguments should lie between 1 and 5");
    end
    
    if ~isscalar(Wo) | ~isreal(Wo) then
        error("Wo must be real ,numeric and scalar");
    end
    if Wo<=0 | Wo>=1 then
        error("Wo must lie between 0 and 1");
    end
    
    if ~isreal(Wt) then
        error("Wt must real");
    end
    
    
    for i= 1:length(Wt)
        if Wt(i) <=0 | Wt(i) >=1 then
            error("Wt must be in normalised form");
        end
    end
    
    if ~isscalar(K) then
        error("K must be a scalar");
    end
// Flag checking
    if (length(varargin)==1) & (type(varargin(1))~=10) then
        error("Input argument #6 must be of type char");
    end
    
    if length(varargin)==0 then
        pass= -1;           //pass being the default option
    else
        Pa=varargin(1);
        select Pa
        case 'pass' then
            pass=-1;
        case 'stop' then
            pass=1;
        else
            error("Invalid option,input should be either pass or stop");
        end
    end
    l=length(Wt)
// Calculating the numerator and denominator for the mapping filter
    Wold =%pi * Wo * (-1).^(0:l-1);
    Wnew =%pi * Wt(:).';
    al=sin(Wnew.'/2*(l-2:-2:-l)-Wold.'/2*ones(1,l));
    AllpassDen =[1 -sin(l*Wnew/2-Wold/2)/al'];
    AllpassNum = (flipdim((AllpassDen),2))*pass;
    
    if or(AllpassNum~=1) | or(AllpassDen~=1) then
        Z2=[];
        P2=[];
        K2=K*prod(AllpassNum(1)-Z*AllpassDen(1))/prod(AllpassNum(1)-P*AllpassDen(1));
        
        for i=1:length(Z),
            Z2 = [Z2, roots(AllpassNum - Z(i).*AllpassDen).'];
        end
        for i=1:length(P),
            P2 = [P2, roots(AllpassNum - P(i).*AllpassDen).'];
        end
// For stabilizing the target filter (if unstable after tranformation)
        index = find(abs(P2)>1);
        K2 = K2/prod(1-P2(index));
        P2(index) = 1. /conj(P2(index));
        K2= K2*prod(1-P2(index));
    else
        Z2=Z;
        P2=P;
        K2=K;
    end
    //Converting to Column vector
    Z2=Z2(:);
    P2=P2(:);

endfunction
