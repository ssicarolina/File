clear
clc
%% PROGRAM
% menentukan jumlah angka penting suatu bilangan 

%% INPUT
x = input("Masukkan suatu bilangan integer = ");

%% ALGORITMA
p = x;
t = 1;
while p > 1
    if p/(10^t) > 1
        t = t + 1;
    else
        p = 0;
    end
end
fprintf("Jumlah angka signifikan pada bilangan %d = %d\n ", x, t)

%%
% perhatikan 
1+eps(1)