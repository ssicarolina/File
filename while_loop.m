clear
clc

disp("ON FIRE !!");
disp("WHILE LOOP")

% vector increment
x = -5:.5:5;
y = [];

% akan diplot persaman y = x^3 + 2x^2
i = 1;
while i<=length(x)
    y(i) = (x(i))^3 + 2*((x(i))^2);
    i = i + 1;
end
plot(x,y)

