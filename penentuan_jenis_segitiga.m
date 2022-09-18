clear
clc

%% 
% Panjang sisi-sisi sebuah segitiga masing-masing A, B dan C
% Bila A sisi terpanjang, tentukanlah jenis dari segitiga tersebut
% Apakah bukan segitiga/segitiga
% Apakah segitiga siku siku/ tumpul/ lancip

%% INPUT
a = input("Berikan nilai a sebagai sisi terpanjang = \n");
b = input("Berikan nilai b = \n");
c = input("Berikan nilai c = \n");

%% ALGORITMA
if a^2 == b^2 + c^2
    disp(" Termasuk Segitiga Siku-Siku")
elseif a^2 > b^2 + c^2
    disp(" Termasuk Segitiga Tumpul")
elseif a^2 < b^2 + c^2
    disp(" Termasuk Segitiga Lancip")
end

%% GRAFIK
p = nsidedpoly(3, 'Center', [1 ,1], 'SideLength', 1);
plot(p);