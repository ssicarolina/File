clear
clc

data = xlsread('Cesium.xlsx');   %langsung mengambil data angkany

%%
% num = mengambil hanya data berupa angka
% txt = mengambil hanya data berupa char/string
% raw = mengambil semua data
[num, txt, raw] = xlsread('Cesium.xlsx','Sheet1','B2:C32');  

x = num(:,1)
y = num(:,2)

plot(x,y)
title("DATA ACAK")
xlabel("V1")
ylabel("V2")

%%
% fungsi xticklabels()
% fungsi legend()