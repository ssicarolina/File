clear
clc

disp("ON FIRE !!");
disp("FOR LOOP")

% membuat array dengan increment 
a = 1:5;         %array yang isinya angka 1 2 3 4 5
b = 1:.5:3;      %array yang isinya angka 1 1.5 2 2.5 3
whos; 
c = a';

% looping for
for i = 1:.5:3
    i;
end

% contoh kasus menentukan range fungsi Rf
% let f(x) = x^2 + 2x
% with x = {x|-5 <= x <= 5}
% dicari Rf 
x = [-5:.5:5];
panjang_array_x = length(x);
y = [];          % array tempat mengisi Rf nanti

for i = 1:length(x)
    y(i) = (x(i))^3 + 2*((x(i))^2);
end    
y;

% memplot 
plot(x,y)