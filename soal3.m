clear
clc
%% 
% Program menghitung 1 + 2 + 3 + . . . + 99

%% INPUT
A = zeros(1,1);
A(1) = 1;
i = 2;
jumlah = 1;
%% ALGORITMA
while A(i-1) < 99
    A(i) = 1 + A(i-1);
    jumlah = jumlah + A(i);
    i = i + 1;
end

%% OUTPUT
fprintf("Jumlah barisan = %d\n", jumlah )
% 4950