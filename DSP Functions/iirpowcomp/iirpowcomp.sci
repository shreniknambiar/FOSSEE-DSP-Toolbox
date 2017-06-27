function [bp,a]= iirpowcomp(b,a,varargin)
//Power complementary IIR filter
//Calling Sequences
//
//[bp,ap] = iirpowcomp(b,a) returns the coefficients of the power complementary IIR filter g(z) = bp(z)/ap(z) in vectors bp and ap, given the coefficients of the IIR filter h(z) = b(z)/a(z) in vectors b and a. b must be symmetric (Hermitian) or antisymmetric (antihermitian) and of the same length as a.
//
//[bp,ap] = iirpowcomp(b,a,c) where c is a complex scalar of unity magnitude, forces bp to satisfy the generalized hermitian property:
//conj(bp(end:-1:1)) = c*bp.
//When c is omitted, the function chooses c as follows:
//When b is real, the function chooses c as 1 or -1, whichever yields bp as real.
//When b is complex, c defaults to 1.
//
//Input Parameters:
//                      b: Coefficients of numerator of the IIR filter
//                      a: Coefficients of denominator of the IIR filter
//                      c: Complex scalar of unit magnitude
//
//Output Parameters
//                      bp: Coefficients of the numerator of the power complementary IIR filter
//                      ap: Coefficients of the denominator of the power complementary IIR filter
//
//Example: 
//                      [b,a]=cheby1(10,.5,.4);
//                      [bp,ap]=iirpowcomp(b,a);
//                      [xm,fr]=frmag(bp,ap,256);
//                      plot(fr,xm);
//
//Author: Shrenik Nambiar
//
// Input validation statements
//
    if argn(2)<2 | argn(2)>3 then
        error("2/3 input arguments allowed");
    end
    
    if argn(1)~=2 then
        error("The number of output arguments should be 2");
    end
    
    if ~(or(size(b)==1) | or(size(a)==1)) then
        error("size of either b or a must not be 1");
    end
    
    if length(b)~=length(a) then
        error("Both the vectors must be of equal length");
    end
    
    n= length(b)-1;         //order of the numerator
//Converting both the vectors to row vectors 
    b=b(:).' ;
    a=a(:).' ;
    
    if n<1 then
        error("Order should be greater than 1 ");
    end
// Reversed conjugated polynomial of b and a by replacing z with z^(-1) and conjugating the coefficients
    rb= conj(b($:-1:1));
    ra= conj(a($:-1:1));
    
    r= conv(rb,b)-conv(a,ra);

// Computing the numerator of the power complementary filter

    if isreal(b) & argn(2)==2 then
        bp= recursion(r,n,1);
        if ~isreal(bp) then
            bp=recursion(r,n,-1);
        end
        if ~isreal(bp) then
            error("Filter type 4");
        end
    else
        
        
        if argn(2)==3 then
            c=varargin(1);
            if max(size(c))>1 then
                error(warning("c must be scalar"));
            end
            if abs(c)-1 > %eps^(2/3) then
                error(warning("Filter error"));
            end
        end
    
        bp= recursion(r,n,c);
    end
    
endfunction

function [bp]= recursion(r,n,c)
// Computes the numerator q of the power complementary transfer function needed to compute the allpass decomposition.

    bp(1)= sqrt(-r(1)./c);
    bp(n+1)= conj(c*bp(1));
    bp(2)= -r(2)./(2*c*bp(1));
    bp(n)= conj(c*bp(2));
    
    for i= 3:ceil(n/2)
        bp(n)= (-r(i)./c - bp(2:i-1)*bp(i-1:-1:2).')./(2*bp(1));
        bp(n+2-i)= conj(c*bp(i));
    end

// Compute middle coefficient separately when order is even

    if pmodulo(n,2) ==0 then
        bp((n+2)/2)= (-r((n+2)/2)./c - bp(2:(n+2)/2 -1)*bp((n+2)/ -1:-1:2).')./(2*bp(1));
    end
endfunction
