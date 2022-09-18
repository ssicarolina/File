clear
clc
%% PROGRAM
% DIberikan sebuah vektor integer a dengan n elemen dan sebuah bilangan bulat b.
% Buat algoritma untuk mencetak semua nilai i yang bersifat a(i) = b

%% INPUT
n = input("Masukkan ukuran vektor integer a  = ");
a = zeros(1,n);
b = input("Berikan suatu nilai b = ");
c = zeros(1);

%% ALGORITMA
% inisiasi vektor a
for i = 1:n
    a(i) = randi([1,5]);
end

% pencarian apakah ada i sehingga a(i) = b
j = 1;
for i = 1:n
    if a(i) == b
        c(j) = i;
        j = j + 1;
    end
end      
%% OUTPUT
fprintf("Semua nilai i yang bersifat a(i) = b \n")
disp(c)