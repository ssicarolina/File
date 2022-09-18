clear
clc
%% PROGRAM
% Menentukan suku ke-n dari barisan fibonacci

%% INPUT
a = 1;
b = 1;
n = input("Masukkan barisan fibonacci suku ke berapa = ");
c = a + b ; 
i = 3; 

%% ALGORITMA
while i-1 ~= n
    a = b;
    b = c;
    c = a + b;
    i = i + 1;
end

%% OUTPUT
fprintf("Suku ke-%d dari barisan fibonacci = %d\n", n, c)