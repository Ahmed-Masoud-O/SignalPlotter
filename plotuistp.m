function plotuistp (a , start , choice , stp)
figure;
b = start - 10;
c = start + 10;
d = -1*a - 5;
e = a + 5;
if choice == 1
T = b:stp:c;
X = a*heaviside(T-start);%-start is shift
plot (T,X,'r','LineWidth',3);
end
if choice == 2
    T = b:stp:c;
X = a*heaviside(T-start);
stem (T,X,'r');
end
axis ([b c d e]);
grid on;
end