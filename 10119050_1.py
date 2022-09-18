# -*- coding: utf-8 -*-
"""Praktikum 1 MA2151 Sikomat 2020

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1vppEVs20CO4xzE3AG3gV-z3Jv7aclqSM

# **Praktikum 1 MA2151 Sikomat 2020**

**PERINGATAN**: Dokumen Notebook ini tidak dapat diedit secara langsung. Silakan pencet "Salin ke Drive" untuk membuat salinan notebook ini ke Drive Anda (agar bisa diedit di Colab), atau klik File -> Download .ipynb untuk mengunduh notebook ini dan mengerjakan di Jupyter Notebook. Harap menghapus catatan ini sebelum mengumpulkan hasil pekerjaan Anda.

Nama Lengkap: Carolina Sinaga

NIM: 10119050

## Skema Jawaban
Penulisan program harus mengikuti skema seperti berikut. Diawali dengan nama program, penjelasan mengenai program, variabel-variabel yang terlibat dengan keterangan, dan dilanjutkan dengan langkah programnya.

```
# Program nama-program
# penjelasan mengenai hal yang dihitung (bisa beberapa baris)
#
# Variable:
#   ... penjelasan
#   ... penjelasan
# beberapa variabel bertipe sama boleh ditulis sebaris, dipisah koma.
#
# hitungan program
#
```

Program hanya boleh menggunakan instruksi sequential (berurutan) dan tidak boleh memakai variabel array (berindeks). Format keluaran diatur supaya mudah dibaca.

Kirimkan berkas .ipynb yang sudah Anda buat sebagai jawaban praktikum ke furrafif@gmail.com dengan subjek [PRAKTIKUM SIKOMAT 1]_NIM dan nama berkas NIM_1.ipynb

Contoh: [PRAKTIKUM SIKOMAT 1] 10119116, 10119116_1.ipynb

## 1

Buat program Python untuk menghitung ekspresi berikut, **tanpa memakai tanda kurung**. Tampilkan hasilnya pada layar komputer.

$$\frac{a+bc}{ac + \frac{c}{a^2+b^3}} \quad \text{a, b, c integer}$$

Tidak boleh ada variabel tambahan lain selain `a`, `b`, `c`. Ujilah program tersebut dengan nilai `a = 3`, `b = 4`, dan `c = 5` yang dimasukkan dengan perintah input.
"""


# Program Menghitung dan menampilkan hasil suatu ekspresi tanpa memakai tanda kurung
# ekspresi yaitu (a+b*c)/(a*c+ c/(a**2+b**3)) hanya menggunakan 3 variabel yaitu a,b dan c yang merupakan integer

#Variabel
# a,b, dan c merupakan data integer
# a sebagai variabel menyimpan nilai a
# b sebagai variabel menyimpan nilai b
# c sebagai variabel menyimpan nilai c
a = int(input("Masukkan nilai a:")) # perintah untuk memasukkan nilai a
b = int(input("Masukkan nilai b:")) # perintah untuk memasukkan nilai b
c = int(input("Masukkan nilai c:")) # perintah untuk memasukkan nilai c

#Hitungan Program
hasil = a + b*c 

b = a**2 +b**3
b = c/b
b = a*c + b

hasil = hasil/b
print("Hasil:",hasil)   # perintah untuk menampilkan hasil akhir ekspresi nilai c





"""#2

Seekor kura-kura berlari dari garis start dengan kecepatan $V_1$ cm/detik. $k$ detik kemudian seekor kancil mulai berlari dari garis start dengan kecepatan $V_2$ cm/detik. Buat program komputer dalam bahasa Python untuk menentukan waktu yang diperlukan kancil untuk menyusul kura-kura dan tentukan jaraknya dari garis start. Data $V_1$, $V_2$, dan $k$ dimasukkan dengan perintah input. Ujilah program tersebut dengan data-data berikut:

1. $V_1= 3$, $V_2=7$  , dan $k=10$
2. $V_1= 3$, $V_2=3.1$, dan $k=10$
3. $V_1= 3$, $V_2=3$  , dan $k=10$
4. $V_1= 3$, $V_2=2.5$, dan $k=10$

Dan tampilkan hasilnya dalam bentuk tabel sebagai berikut:

```
V kura2     V kancil     k     waktu bertemu     jarak bertemu
   .            .        .          .                 .
   .            .        .          .                 .
   .            .        .          .                 .
   .            .        .          .                 .

```
"""

# Tempat untuk mengerjakan
# Program menentukan waktu yang diperlukan oleh kancil untuk menyusul kura-kura dan menentukan jarak yang mereka tempuh dari garis start
# Kasus Program nya yaitu Seekor kura-kura berlari dari garis start dengan kecepatan  V1  cm/detik.
# k  detik kemudian seekor kancil mulai berlari dari garis start dengan kecepatan  V2  cm/detik.


#Variabel
# V1,V2, dan K merupakan data integer
# V1 sebagai variabel menyimpan nilai kecepatan kura-kura
# V2 sebagai variabel menyimpan nilai kecepatan kancil
# k sebagai variabel menyimpan nilai selisih waktu kancil dan kura-kura
# t sebagai nilai waktu kancil dan kura-kura bertemu
# s sebagai nilai jarak dari start
# V4 sebagai nilai selisih kecepatan kancil dan kura kura
V1 = float(input("Masukkan nilai V1:")) # perintah untuk memasukkan nilai V1
V2 = float(input("Masukkan nilai V2:")) # perintah untuk memasukkan nilai V2
k = float(input("Masukkan nilai k:")) # perintah untuk memasukkan nilai k
V4 = V2-V1 
t = 1 # untuk mendefenisikan nilai t agar tidak kosong
# Hitungan Program

t = V1*k/V4 # selisih waktu kancil dan kura-kura bertemu setelah k detik
s = V1 * t # jarak yang ditempuh kancil/kura-kura dari start hingga bertemu
t = t + k # waktu saat kancil dan kura-kura bertemu dalam satuan detik

print("V kura2","\tV kancil","\t k","\t waktu bertemu","\t jarak bertemu")
print(V2,"\t\t",V1, "\t\t",k, "\t\t", t,"\t", s)









