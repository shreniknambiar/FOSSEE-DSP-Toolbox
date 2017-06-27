function [Z2, P2, K2, AllpassNum,AllpassDen]= zpkrateup(Z, P ,K, N)
//Zero-pole-gain complex bandpass frequency transformation
//
//Calling Sequence:
//
//[Z2,P2,K2,AllpassNum,AllpassDen] = zpkrateup(Z,P,K,N) returns zeros, Z2, poles, P2, and gain factor, K2, of the target filter being transformed from any prototype by applying an Nth-order rateup frequency transformation, where N is the upsample ratio. Transformation creates N equal replicas of the prototype filter frequency response.It also returns the numerator, AllpassNum, and the denominator, AllpassDen, of the allpass mapping filter. The original lowpass filter is given with zeros, Z, poles, P, and gain factor, K.
//
//Input Parameters:
//                      Z: Zeros of the prototype filter
//                      P: Poles of the prototype filter
//                      K: Gain of the prototype filter
//                      N: Upsampling Ratio
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
//                        [z2,p2,k2] = zpkrateup(z, p, k, 4);
//
//Author: Shrenik Nambiar

//References: 1. Constantinides, A.G., "Spectral transformations for digital filters," IEEE® Proceedings, vol. 117, no. 8, pp. 1585-1590, August 1970.
//
// Input Validation Statements 
    if argn(2) ~=4 then
        error("Number of input arguments should be 4");
    end
    
    if argn(1)<1 |argn(1)>5 then
        error("Number of output arguments should be 5");
    end
    
    if ~isscalar(N) | ~isreal(N) | N<0 then
        error("N must be real and positive scalar");
    end
    
    if round(N)~=N & type(N) ~=8 then
        error("N must be an integer");
    end
    
    if ~isscalar(K) then
        error("K must be a scalar");
    end
// Calculating the numerator and denominator for the mapping filter
    AllpassDen = [1 zeros(1,N)];
    AllpassNum = [zeros(1,N) 1];
    
    
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
