clear
clc
%% PROGRAM
% DIberikan sebuah vektor integer a dengan n elemen.
% Buat algoritma untuk mencetak indeks dari a yang nilai mutlaknya terbesar

%% INPUT
n = input("Masukkan ukuran vektor integer a  = ");
a = zeros(1,n);

%% ALGORITMA
% inisiasi vektor a
for i = 1:n
    a(i) = randi([-20,10]);
end
disp("Vektor a = ")
disp(a)

% pencarian apakah ada indeks dari a yang nilai mutlaknya terbesar
maks = a(1);
for i = 1:n
    if abs(a(i)) > maks
        maks = abs (a(i));
        indeks = i ;
    end
end      
%% OUTPUT
fprintf("Indeks dari vektor a yang nilai mutlaknya terbesar yaitu i = %d yang bernilai = %d\n", indeks, maks)