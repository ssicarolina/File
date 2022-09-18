clear
clc
%% PROGRAM
% Diberikan bilangan bulat positif K, buat algoritma untuk menguji apakah
% K bilangan prima atau bukan 

%% INPUT
n = input("Masukkan bilangan yg akan diuji prima atau bukan = ");
t = 0;
i = 2;
%% ALGORITMA
while i ~= n
    if mod(n,i) == 0
        disp(i)
        t = t + 1;
    end
    i = i + 1;
end
%% OUTPUT
if t > 0
    fprintf("Bilangan n = %d BUKAN bilangan prima\n", n);
else 
    fprintf("Bilangan n = %d MERUPAKAN bilangan prima\n", n);
end