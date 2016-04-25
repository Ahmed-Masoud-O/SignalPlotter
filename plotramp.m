function plotramp (slope , t1 , t2 , shift , choice , stp)
figure;
T = t1:stp:t2;
X = slope*T+shift;
if choice == 1
plot (T,X,'r','LineWidth',3);
end
if choice == 2
   stem (T,X,'r'); 
end
grid on;
end