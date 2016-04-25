function [t,x] = plotexpoconc (a , t1 , t2 , stp , exponent , shift)

t = t1:stp:t2;
x = a*exp(t*exponent);

end