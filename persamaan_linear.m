clear
clc

% SPL 
% 2x + 3y = 10
% 5x + 9y = 15
% akan dicari solusi SPL tersebut
% dimisalkan
A = [2 3;5 9]
C = [10;15]
% dengan menggunakan matrix left division
% let A*X = C
% so
X = A\C
% yaitu 
x = X(1,1)
y = X(2,1)
% boleh dicek manual