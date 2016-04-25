function [t,x] = plotsinconc (a , frq , t1 , t2 , stp , shift)

t = t1:stp:t2;
x = a*sin(2*pi*frq*t+shift);

end