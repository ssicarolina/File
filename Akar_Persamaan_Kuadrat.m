clear
clc
%% Sebuah persamaan kuadrat dengan koefisien a, b, dan c 
%   ax^2 + bx + c = 0
 
%% INPUT
a = input("Masukkan nilai koefisien a = ");
b = input("Masukkan nilai koefisien b = ");
c = input(" Masukkan nilai koefisien c = ");
fprintf("%dx^2 + %dx + %d = 0 \n",a,b,c) 

%% ALGORTIMA
D = b^2 - 4*a*c;
if D>= 0
    x1 = (-b + sqrt(D))/(2*a);   % akar x1
    x2 = (-b - sqrt(D))/(2*a);    % akar x2
    fprintf("x1 = %d\n",x1);
    fprintf("x2 = %d\n",x2);
else
    re = -b/(2*a);
    im = sqrt(-D)/(2*a);           % akar imaginer
    fprintf("x1 = %d + %d i \n",re,im);
    fprintf("x2 = %d - %d i \n",re,im);
end