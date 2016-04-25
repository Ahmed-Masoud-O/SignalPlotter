function plotRect(t1,t2,stp,A,width,center,choice)
figure;
t=t1:stp:t2;
start =center-(width/2);
finish =center+(width/2);
x = A * rectangularPulse(start,finish,t);
if choice == 1
plot(t,x,'LineWidth',3);
end
if choice == 2
    stem(t,x);
end
grid on;
if A>0
axis([t1 t2 -A A+1])
end
if A<0
 axis([t1 t2 A-1 -A+1])   
end
end