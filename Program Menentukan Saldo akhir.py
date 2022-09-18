# -*- coding: utf-8 -*-
"""
Created on Sun Sep 20 16:09:31 2020

@author: Carolina
"""


"""
Program menghitung suatu suku bunga sebagai berikut.
Modal awal (saldo bulan ke-1) : 100000
Bunga : 0.XX (XX adalah NIM)
Bulan : 9
Saldo merupakan : Saldo di bulan sebelumnya ditambah besarbunga (bunga*saldo sebelumnya)
"""

print("Program Interaktif")
# KAMUS
# angka,i , p data integer
# biner merupakan data string

# INPUT
Nama = str(input("Masukkan nama:"))
NIM = int(input("Masukkan NIM:"))
modal = float(input("Masukkan Modal Awal: "))
bunga = float(input("Bunga:"))
bulan = int(input("Bulan:"))

i = 1 
p = 1
print("Hallo",Nama,",","NIM kamu adalah:",NIM)

# ALGORTIMA
while i<=bulan:
    print("saldo bulan ke-",p,"adalah:",modal)
    modal = modal + (bunga*modal)
    p = p + 1
    i = i + 1
    continue

