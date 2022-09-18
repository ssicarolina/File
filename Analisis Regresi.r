
#CONTOH
#Input Data
library(stats)
# data <- read.delim("D:/Kuliah/Jurusan/AnDat/Praktikum Andat/Praktikum ke-7/Analisis Regresi.txt")
# attach(data)
setwd("D:/Kuliah/Jurusan/AnDat/Praktikum Andat/Praktikum ke-6")
library(readxl)
data <- read_excel("D:\Kuliah/Mat/Semester 5/Analisis Variansi dan Regresi/Praktikum ke-7/Analisis Regresi.xlsx")
Pressure <-data$Pressure
Formation_Volume <- data$Formation_Volume

# Menentukan Korelasi
cov(Pressure,Formation_Volume)
cor(Pressure,Formation_Volume) 

# Menampilkan diagram Pencar
library(ggplot2)
scatter.smooth(x=Pressure, y=Formation_Volume, main="Pressure ~ Formation Volume")
# Menampilkan Diagram Kotak Titik
par(mfrow=c(1,2))
boxplot(Pressure, main="Pressure", sub=paste("Outlier rows: ", boxplot.stats(Pressure)$out)) 
boxplot(Formation_Volume, main="Formation Volume Factor", sub=paste("Outlier rows: ", 
                                                                    boxplot.stats(Formation_Volume)$out))
# Menampilkan Diagram Densitas
library(e1071) 
par(mfrow=c(1, 2))
plot(density(Formation_Volume), main="Density Plot: Formation Volume Factor", 
     ylab="Frequency", sub=paste("Skewness:", round(e1071::skewness(Formation_Volume), 2))) 
polygon(density(Formation_Volume), col="red") 
plot(density(Pressure), main="Density Plot: Pressure", ylab="Frequency", 
     sub=paste("Skewness:", round(e1071::skewness(Pressure), 2))) 
polygon(density(Pressure), col="red") 

# Menaksir Model Regresi
linearMod <- lm(Pressure ~ Formation_Volume, data=data) 
print(linearMod)

# Menentukan Kecocokan Model Regresi
summary(linearMod) 
(AIC(linearMod))
(BIC(linearMod))

## Uji t
# pvalue dari Betha_0 dan B1 lebih kecil dari alpha 0.05 , maka
# akibatnya kedua parameter regresi tersebut berpengaruh signifikan
# terhadap variabel respon

## Uji Statistik F
# didapat p-value 0.0032 yang lebih kecil dari alpha 0.05
# H_0 ditolak yang artinya
# seluruh paramater berpengaruh signifikan terhadap
# variabel respon


## Koefisien Determinasi
# didapat 0.4999
# artinya variabel prediktor berpengaruh 50%
# terhaap variabel respons

# pressure itu prediktor
# volume itu respon
# PV = nrt
# Volume mempengaruhi pressure

# TA 1
library(readxl)
data <- read_excel("D:/Kuliah/Jurusan/AnDat/Praktikum Andat/Praktikum ke-7/Soal 1.xlsx")
Tegangan_Normal <-data$Tegangan_Normal
Ketahanan_Geser <- data$Ketahanan_Geser

# Menampilkan Scatterplot dari data
library(ggplot2)
scatter.smooth(x=Tegangan_Normal, y=Ketahanan_Geser, main="Tegangan_Normal ~ Ketahanan_Geser")

# Estimasi nilai dari regresi linear
linearMod <- lm(Tegangan_Normal ~ Ketahanan_Geser, data=data) 
print(linearMod)

# Nilai Koefisien Relasi
cov(Tegangan_Normal,Ketahanan_Geser)
cor(Tegangan_Normal,Ketahanan_Geser)

# Estimasi nilai ketahanan geser untuk tegangan normal sebesar 24.5
y = 41.4809 - 0.6264*(24.5)
y


## TA 2
library(readxl)
data <- read_excel("D:/Kuliah/Jurusan/AnDat/Praktikum Andat/Praktikum ke-7/Soal 2.xlsx")
Daya_dorong <-data$y
Gas_buang <- data$x

# Menampilkan Scatterplot dari data
library(ggplot2)
scatter.smooth(x=Daya_dorong, y=Gas_buang, main="Daya Dorong ~ Gas Buang")

# Estimasi nilai dari regresi linear
linearMod <- lm(Daya_dorong ~ Gas_buang, data=data) 
print(linearMod)

# Nilai Koefisien Relasi
cov(Tegangan_Normal,Ketahanan_Geser)
cor(Tegangan_Normal,Ketahanan_Geser)

# Estimasi daya dorong mesin apabila gas buangnya sebesar 1500 derajat fahrenheit
y = -1847.633 + 3.653*(1500)
y

# Uji seluruh parameter
summary(linearMod) 





