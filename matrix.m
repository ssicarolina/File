clear
clc
disp("ON FIRE !!");
disp("MATRIKS")

A = [4 2;6 1]
a = [2 1;4 0]
B = [3 0 2 9];

indeks = A(1,1); 
baris_A = A(1,:);
kolom_A = A(:,2); %kolom kedua A
dari_B = B(3); % isi ke 3 vektor baris B

% Perkalian Matriks
C = A*a;

% Matriks dipangkatkan
D = A^3;

% Perkalian matriks korespondensi satu-satu
E = A.*a

% A*X = a
% akan dicari nilai matriks X yg memenuhi
% menggunakan matrix left division
X = A\a
bukti_a = A*X

% Y*A = a
% akan dicari nilai matriks X yg memenuhi
% menggunakan matrix right division
Y = a/A
bukti_a_2 = Y*A


% inisiasi matriks
m = input("Masukkan jumlah baris matriks: ");
n = input("Masukkan jumlah kolom matriks: ");
A = zeros(m,n);
formatSpec = 'Berikan Nilai baris ke %d dan kolom ke %d:';

for i = 1:m
    for j = 1:n
        formatSpec2 = fprintf(formatSpec,i,j);
        A(i,j) = input(" ");
    end
end
disp(A)