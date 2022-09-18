###                 PROSEDUR R ANOVA-ONE WAY
#CONTOH
#Input Data
setwd("Alamat Folder")
library(readxl)
x #Input data dalam bentuk data frame
#Bentuk data menjadi sebuah vektor
r = c(t(as.matrix(x)))
#Definisikan variabel baru untuk perlakuandan banyak pengamatan
f = c("Variabel 1", "Variabel 2", .,"Variabel k") #faktor variabel perlakuan
k #banyak perlakuan
n #banyak pengamatan per perlakuan
N #banyak seluruh pengamatan


#Vektor faktor perlakuan sesuai vektor r
tm = gl(k,1,n*k,factor(f)) #vektor
perlakuan
#Function
av = aov(r ~ tm)
summary(av) #tabel ANOVA
#F critical atau tabel
df1 = k-1
df2 = N-k
alpha = 0.05
Fcrit = qf(1-alpha,df1,df2)
Fcrit



###                 PROSEDUR R ANOVA-TWO WAY
#Input Data
setwd("Alamat Folder")
library(readxl)
x #Input data dalam bentuk data frame
#Bentuk data menjadi sebuah vektor
r = c(t(as.matrix(x)))
#Definisikan variabel baru untukperlakuan dan banyak pengamatan
f1 = c("faktorA 1", "faktorA 2", .,"faktorA k1") #faktor perlakuan pertama
f2 = c("faktorB 1", "faktorB 2",.,"faktorB k2") #factor perlakuan kedua
k1 = length(f1) #banyak perlakuan
k2 = length(f2) #banyak jenis perlakuan kedua
n #banyak pengamatan per perlakuan
N #banyak seluruh pengamatan

#Vektor faktor perlakuan sesuai vektor r
tm1 = gl(k1,n*k2,n*k1*k2,factor(f1)) #vektorperlakuan pertama
tm2 = gl(k2,1,n*k1*k2,factor(f2)) #vektorperlakuan kedua
#Function
av = aov(r ~ tm1 * tm2) #interaksi
summary(av) #tabel ANOVA