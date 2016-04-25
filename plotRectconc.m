function [t,x] = plotRectconc(t1,t2,stp,A,width,center)
t=t1:stp:t2;
start =center-(width/2);
finish =center+(width/2);
x = A * rectpuls(t-center,width);
end