clear
clc

%% 
% Diberikan sebuah vektor real a dengan 
% n komponen, akan dihitung jumlah dari elemen-elemen
% vektor tersebut

%% INPUT
n = input("Masukkan ukuran vektor = ");

%% ALGORITMA
A = zeros(1,n);      % matriks berukuran 1 x n dengan semua entrinya berisi angka 0 
s = 0;               % varibel menyimpan jumlah dari elemen - elemen dari vektor A
for i = 1:n
    A(i) = randi([-10 50]);     % mengambil random number dari interval [-10,50]
    s = s + A(i);
end

%% OUTPUT
disp(A)
fprintf("Jumlah seluruh entrinya = %d\n",s)