function [I, err]= Intergal(a, b, n, f)
%Where f is our function of choice that we're trying to find an
%approximation for an integral of. Start with exponential as obvious
%choice.

    h=(b-a)/n;
    S=f(a); 
    for i=1:n-1 
        x=a+h*i; 
        g=f(x);
        S=S+2*g; 
    end
    S=S+exp(b);
    I=h*S/2;
    syms d;
    expr = f(d);
    ExactIntegral = double(int(expr,a,b));
    %disp(class(ExactIntegral));
    err = abs(I - ExactIntegral);
end
    
    