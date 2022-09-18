## CONTOH SOAL UJI HIPOTESIS

#                 CONTOH SOAL 1
# Sebuah mesin menghasilkan potongan logam berbentuk silinder.
# Selanjutnya ukuran diameter dari potongan logam 
# tersebut (dalam mm) adalah:
# 1.01 0.97 1.03 1.04 0.99 0.98 0.99 1.01 1.03
# Uji pernyataan yang mengatakan bahwa rata-rata 
# potongan logam tersebut lebih kecil dari 1.09 mm 
# (gunakan ???? = 0.05)

setwd("D://Kuliah//Jurusan//AnDat//Praktikum Andat//Praktikum ke-5/")
library(readxl)

#Input
x = read_excel("D:/Kuliah/Jurusan/AnDat/Praktikum Andat/Praktikum ke-5/
               DATA UJI HIPOTESIS.xlsx", sheet = "contoh diameter logam")
x = as.numeric(x$`diameter potongan logam`)
xbar = mean(x) #mean sampel
mu0 = 1.09 #nilai hipotesis
s = sd(x) #standar deviasi sampel
n = length(x) #banyak observasi
alpha = 0.05 #taraf signifikansi

#Cara Manual (bandingkan t hitung dengan t tabel)
(t = (xbar-mu0)/(s/sqrt(n))) #t hitung
(t.lower = qt(alpha,df = n-1)) #t tabel eka arah

#p-value (bandingkan p-value dengan alpha)
(pval.lower = pt(t, df=n-1)) #eka arah

#Cara Otomatis
t.test(x, mu=mu0, alternative = "less",conf.level = 0.95)





#                 CONTOH SOAL 2
# Sebuah majalah tentang kriminalitas menyatakan bahwa lama ditahannya (dalam
# bulan) seorang narapidana karena kasus penipuan lebih pendek setidaknya 10
# bulan dibanding kasus senjata api. Seorang ahli kriminologi mencatat masa tahanan
# 10 narapidana karena kasus penipuan dan 8 narapidana karena kasus senjata api
# sampai mereka bebas dari penjara sbb:
#     Penipuan 3.6 5.3 10.7 8.5 11.8 15.5 13 7 5.9 7
#     Senjata Api 25.5 10.4 18.4 19.6 20.9 10.3 18.2 18.1
# Asumsikan bahwa data berasal dari distribusi normal. 
# Untuk tingkat signifikansi 5%,
# apakah pernyataan pada majalah tersebut didukung 
# oleh data yang ada?


setwd("D://Kuliah//Jurusan//AnDat//Praktikum Andat//Praktikum ke-5/")
library(readxl)
#Input
x = read_excel("D:/Kuliah/Jurusan/AnDat/Praktikum Andat/Praktikum ke-5/
               DATA UJI HIPOTESIS.xlsx", sheet = "latihan no 6")
x1 = as.numeric(x$Penipuan)
x2 = as.numeric(x$`Senjata Api`)
x2 = na.omit(x2) #menghapus missing value atau NA
xbar1 = mean(x1) #mean sampel x1
xbar2 = mean(x2) #mean sampel x2
mu0 = -10 #nilai hipotesis
S1 = sd(x1) #standar deviasi sampel x1
S2 = sd(x2) #standar deviasi sampel x2
n1 = length(x1) #banyak observasi
n2 = length(x2)
alpha = 0.05 #taraf signifikansi

#Cara Manual (Bandingkan Statistik Uji T hitung dan T tabel)
(df = ((S1^2/n1) + (S2^2/n2))^2/
(((1/(n1-1))*(S1^2/n1)^2)+((1/(n2-1))*(S2^2/n2)^2)))
(xbar = xbar1 - xbar2)
(t = (xbar-mu0)/(sqrt((S1^2/n1)+(S2^2/n2)))) #t hitung
(t.lower = qt(alpha, df)) #t tabel eka arah

#p-value (bandingkan p-value dengan alpha)
(pval.lower = pt(t, df)) #eka arah

#Cara Otomatis
t.test(x1, x2, mu=mu0, var.equal=FALSE, alternative = "less", conf.level=0.95)







#                 CONTOH SOAL 3
# Sebuah mesin menghasilkan potongan logam berbentuk
# silinder. Selanjutnya ukuran diameter dari potongan
# logamtersebut (dalam mm) adalah:
#     1.01 0.97 1.03 1.04 0.99 0.98 0.99 1.01 1.03
# Uji pernyataan yang mengatakan bahwa standar deviasi
# potongan logam tersebut lebih besar dari 0.1 mm (gunakan
# ???? = 0.05)


library(readxl)
x <-read_excel("D:/Kuliah/Jurusan/AnDat/Praktikum Andat/Praktikum ke-5/
               DATA UJI HIPOTESIS.xlsx", sheet = "contoh diameter logam")
x <- as.numeric(x$`diameter potongan logam`)
S = sd(x) #stadar deviasi sampel
sigma0 = 0.01^2 #nilai hipotesis variansi
n = length(x) #banyak data
alpha=0.05

#Cara Manual (Bandingkan chi hitung dan chi tabel)
(chi = (n-1)*S^2/sigma0) #chi hitung
(chi.upper = qchisq(1-alpha, df=n-1)) #chi tabel eka arah

#P-value (bandingkan p-value dengan alpha)
(pval.upper = pchisq(chi, df=n-1, lower.tail = FALSE)) #eka arah

#Cara Otomatis
library(TeachingDemos)
sigma.test(x, sigma=sqrt(sigma0), alternative = "greater", conf.level = 0.95)

