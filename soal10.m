clear
clc

%% PROGRAM
% Diberikan matriks real A dengan ukuran m x n
% Buat algoritma untuk menukarkan seluruh elemen baris ke-2 dengan ke-4 

%% INPUT
m = input("Masukkan jumlah baris matriks A = ");
n = input("Masukkan jumlah kolom matriks A = ");
disp("Matriks Awal A")
A = randi([1,10], m, n)  % matriks berukuran m x n dengan entri acak dari interval [1,10];

%% ALGORITMA
for i = 1:m
    for j = 1:n
        p = A(2,j);
        A(2,j) = A(4,j);
        A(4,j) = p;
    end
end

%% OUTPUT
disp("Seluruh baris ke-2 ditukar ke-4, menjadi")
disp(A)
        