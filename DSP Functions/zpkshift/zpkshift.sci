function [Z2, P2, K2, AllpassNum,AllpassDen]= zpkshift(Z, P ,K, Wo,Wt)
//Zero-pole-gain real shift frequency transformation
//
//Calling Sequences
//
//[Z2,P2,K2,AllpassNum,AllpassDen] = zpkshift(Z,P,K,Wo,Wt) returns the zeros,Z2 , poles, P2, and gain factor, K2, of the target filter transformed from the zeros, poles, and gain factor of real lowpass prototype by applying a second-order real shift frequency mapping. It also returns the numerator, AllpassNum, and the denominator, AllpassDen of the allpass mapping filter.
//
//Input Parameters:
//                      Z: Zeros of the prototype filter
//                      P: Poles of the prototype filter
//                      K: Gain of the prototype filter
//                      Wo: Frequency value of the prototype filter to be transformed
//                      Wt: Desired frquency of the target filter
//
//Output Parameters:
//                      Z2: Zeros of the target filter
//                      P2: Poles of the target filter
//                      K2:Gain factor of the target filter
//                      AllpassNum: Numerator of the mapping filter
//                      AllpassDen: Denominator of the mapping filter
//Example: Rotate frequency response by π/2 radians/sample:
//
//                      [b, a] = ellip(10,0.1,40,0.27);
//                      z = roots(b);
//                      p = roots(a);
//                      k = b(1);
//                      [z2,p2,k2] = zpkshift(z,p,k,0.25,0.75);
//                      Num = poly(Z2);
//                      Den = poly(P2);
//Author: Shrenik Nambiar
//
//References: Oppenheim, A.V., R.W. Schafer and J.R. Buck, Discrete-Time Signal Processing, Prentice-Hall International Inc., 1989.
//
//Input Validaton Statement
    if argn(2) ~=5 then
        error("Number of input arguments should be 5");
    end
    
    if argn(1)<1 | argn(1)>5 then
        error("Number of output arguments should be 5");
    end
    
    if ~isscalar(Wo) | ~isreal(Wo) then
        error("Wo must be real ,numeric and scalar");
    end
    if Wo<=0 | Wo>=1 then
        error("Wo must lie between 0 and 1");
    end
    
    if ~isscalar(Wt) | ~isreal(Wt) then
        error("Wt must be real, numeric and scalar");
    end
    if Wt<=0 | Wt>=1 then
        error("Wt must lie between 0 and 1");
    end
    
    if ~isscalar(K) then
        error("K must be a scalar");
    end
// Calculating the numerator and denominator for the mapping filter
    be = cos(%pi*(Wo/2-Wt));
    if abs(be) < 1.0,
        be = be/ cos(%pi*Wo/2);
    else
        be = sin(%pi*(Wo/2-Wt)) / sin(%pi*Wo/2);
    end
    
    AllpassDen = [1 -be 0];
    AllpassNum = [0 be -1];
    
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
