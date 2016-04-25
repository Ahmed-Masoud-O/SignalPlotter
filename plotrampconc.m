function [t,x] =  plotrampconc (slope , t1 , t2 , shift , stp)

t = t1:stp:t2;
x = slope*t+shift;
end