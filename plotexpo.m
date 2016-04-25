function plotexpo (a , t1 , t2 , stp , exponent , shift , choice)
figure;
T = t1:stp:t2;
X = a*exp(T*exponent);
if choice == 1
plot (T,X,'r','LineWidth',3);
axis ([-10 10 -10 10])
end
if choice == 2
    stem (T,X,'r');
    axis ([-10 10 -10 10])
end
grid on;
end