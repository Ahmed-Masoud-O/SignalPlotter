function [t,x] = plotcosconc (a , frq , t1 , t2 , stp , shift)
t = t1:stp:t2;
x = a*cos(2*pi*frq*t+shift);
end