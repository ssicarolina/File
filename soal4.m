clear
clc

%% PROGRAM
% Menghitung 1 + 2 + 4 + 7 + 11 + . . . + n dengan n < 100

%% INPUT
A = zeros(1,2);
A(1) = 1;
A(2) = 2;
i = 2;
jumlah = 1;

%% ALGORITMA
while A(i-1) < 100
    A(i) = A(i-1) + i - 1;
    jumlah = jumlah + A(i);
    i = i + 1;
end

%% OUTPUT
fprintf("Jumlah Barisan = %d\n", jumlah )
% 575
