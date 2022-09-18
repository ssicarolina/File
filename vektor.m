% clear
% clc
% clear all
% home

clear
clc

disp("ON FIRE")
disp("Vektor")

a = 3;
b = 10;
c = 8; 

d = 7;
e = 8;

% skalar 
skalar = 32;

% Vektor
v_1 = [1 2 3 ];     % vektor baris
v_2 = [12 45 78];   % vektor kolom

% Matrix
m_1 = [1 8 ; 7 2];

% Transpose Matriks (m_1')
mt = m_1';

% Penjumlahan Pengurangan Vektor
v_3 = v_1 + v_2;
v_4 = v_2' - v_1';

% Perkalian titik Vektor (dot product)--> menghasilkan skalar
% ingat syarat yg harus dipenuhi dalam dot product vektor
v_5 = dot(v_1,v_2);

% Perkalian silang vektor (cross product) --> menghasilkan vektor
% ingat syarat yg harus dipenuhi dalam cross product vektor
v_6 = cross (v_1,v_2);

% Penggabungkan dua vektor (concatenate)
g = [v_1 v_2];
h = [v_1;v_2];

