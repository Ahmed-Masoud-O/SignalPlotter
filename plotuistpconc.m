function [t,x] = plotuistpconc (a , start , stp)

b = start - 100;
c = start + 100;


t = b:stp:c;
x = a*heaviside(t-start);%-start is shift
end