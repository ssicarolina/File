# Program mencetak biner dari angka yang dimasukkan
"""
Contoh angka 20 hendak diubah ke dalam biner:
    20 : 2 = 10, sisa 0
    10 : 2 = 5, sisa 0
    5 : 2 = 2, sisa 1
    2 : 2 = 1, sisa 0
    1 : 2 = 0, sisa 1
Angka 20 dalam biner adalah 10100.
"""

# KAMUS
# angka,i , p data integer
# biner merupakan data string

# INPUT
Nama = str(input("Masukkan nama:"))
NIM = int(input("Masukkan NIM:"))
i=1 
biner=0
p = 0
angka = int(input("Masukkan angka: "))
print("Hallo",Nama,",","NIM kamu adalah:",NIM)

#ALGORITMA
while angka > 0:
   digit = int(angka%2)
   biner = biner+(i*digit)
   print("digit ke-",p,":",digit)
   p = p + 1 
   angka = int(angka/2)
   i = i*10
# OUTPUT
print ("Biner dari angka yang diberikan yaitu",biner,'.')
print("Yeayy Programku berhasil dan benar ^-^")
    
