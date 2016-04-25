function plotdc (a , t1 , t2 , choice , stp)
figure ;
n = t1:stp:t2;   
X = a*ones(size(n));
if choice == 1

plot (n,X,'LineWidth',3);
%axis ([-t1-3 t2+3 -t1-3 t2+3]) 
grid on;
end
if choice == 2
    stem(n,X);
 %   axis ([-t1-3 t2+3 -t1-3 t2+3]) 
    grid on;
end
end



