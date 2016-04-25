function plotimp(t1,t2,stp,loc,choice)
figure;
t = t1:stp:t2;
x=zeros(size(t));
x(find(t==loc))=1;
if choice == 1
plot(t,x,'LineWidth',3)
end
if choice == 2
    stem(t,x)
end
end