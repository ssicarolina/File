clear
clc

%% 
% Diberikan tiga buah bilangan "berbeda" A, B, C 
% akan ditentukan nilai maksimum dan minimumnya 

%% INPUT
% a = input("Berikan nilai a = \n");
% b = input("Berikan nilai b = \n");
% c = input("Berikan nilai c = \n");

a = randi([1,100]);
b = randi([1,100]);
c = randi([1,100]);

if a > b  
    if a > c
        if b > c
            maks = a;
            min = c;
        else % b < c
            maks = a;
            min = b;
        end
    end
end
if b > a
    if b > c
        if a > c
            maks = b;
            min = c;
        else % a < c
            maks = b;
            min = a;
        end
    end
end
if c > b
     if c > a
        if b > a
            maks = c;
            min = a;
        else % b < c
            maks = c;
            min = b;
        end
     end
end

%% OUTPUT
fprintf("Nilai maksimal = %d\n ",maks)
fprintf("Nilai minimal = %d\n ",min)
