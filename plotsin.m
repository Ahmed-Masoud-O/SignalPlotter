function plotsin (a , frq , t1 , t2 , stp , shift , choice)
figure;
T = t1:stp:t2;
X = a*sin(2*pi*frq*T+shift);
if choice == 1
plot (T,X,'r','LineWidth',3);
end
if choice == 2
    stem (T,X,'r');
end
grid on;
end