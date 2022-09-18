clear
clc

%% 
% Program menentukan maksimum dan minimun dari banyak bilangan berbeda

%% INPUT
n = input("Masukkan ada berapa bilangan berbeda = ");

%% ALGORITMA
for i = 1:n
    A(i) = randi([-50,50])
%     A(i) = input("Masukkan nilai = ");
    
end
maks = A(1);
min = A(1);

for i = 1:n
    if A(i) > maks
        maks = A(i);
    end
    if A(i)<min
        min = A(i);
    end
end

%% OUTPUT
fprintf("NIlai Maksimum = %d\n",maks)
fprintf("NIlai Minimum = %d\n",min)