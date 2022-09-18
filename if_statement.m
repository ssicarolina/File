clear
clc

disp("ON FIRE !!");
disp("IF STATEMENT")


% mengecek bilangan apakah ganjil/genap
a = input("Masukkan nilai a = ");
if mod(a,2)==1
    fprintf("Angka %d adalah Ganjil\n",a);
else
    fprintf("Angka %d adalah Genap\n",a);
end

% mengecek indeks nilai matkul 
x = input("Masukkan nilai Anda = ");
if x>=80
    disp("Selamat, Indeks Nilai kuliah Anda A")
    disp("Anda lulus")
elseif x>=40
    disp("Indeks Nilai kuliah Anda D")
    disp("Anda tidak lulus")
elseif x>=73
    disp("Selamat, Indeks Nilai kuliah Anda AB")
    disp("Anda lulus")
elseif x>=65
    disp("Selamat, Indeks Nilai kuliah Anda B")
    disp("Anda lulus")
elseif x>=55
    disp("Selamat, Indeks Nilai kuliah Anda BC")
    disp("Anda lulus")
elseif x>=50
    disp("Selamat, Indeks Nilai kuliah Anda C")
    disp("Anda lulus")

else
    disp("Indeks Nilai kuliah Anda E")
    disp("Anda tidak lulus")
end