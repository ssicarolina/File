clear
clc
%% PROGRAM
% DIberikan sebuah vektor integer a dengan n elemen.
% Buat algoritma untuk mencetak semua elemen yang berbeda dari vektor a 
% contoh a = ( 15, 31, 23, 15, 75 ,23, 41, 15, 31, 85)
% output = 15 31 23 75 41 85

%% INPUT
n = input("Masukkan ukuran vektor integer a  = ") ;
a = zeros(1,n) ;

%% ALGORITMA
% inisiasi vektor a
for i = 1:n
    a(i) = randi([1,10]) ;
end

%a = [ 15, 31, 23, 15, 75 ,23, 41, 15, 31, 85] 

% pencarian apakah ada i sehingga a(i) = b
b = a(1) ;
t = 0 ;  % variabel menyimpan jumlah a(i) ~= b(j)
x = 2  ; % varibel menyimpan indeks vektor b 
for i = 2:length(a)
    for j = 1:length(b)
        if a(i) ~= b(j) 
            t = t + 1;        
        else
            t = 0 ;
        end
    end
    if t == length(b)
        b(x) = a(i); 
        x = x + 1; 
        t = 0; 
    else
        t = 0;
    end
end      

%% OUTPUT
disp("Vektor a")
disp(a)
fprintf("Semua elemen yang berbeda dari vektor a\n")
disp(b)