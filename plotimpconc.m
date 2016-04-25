function [t,x] = plotimpconc(a,t1,t2,stp,loc)
t = t1:stp:t2;
x = zeros(size(t));
x(find(t==loc))=a;
end