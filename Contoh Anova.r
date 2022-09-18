##                                        CONTOH SOAL 1
#CONTOH
#Input Data
setwd("D:/Kuliah/Jurusan/AnDat/Praktikum Andat/Praktikum ke-6")
library(readxl)
Hormone <- read_excel("D:/Kuliah/Jurusan/AnDat/Praktikum Andat/Praktikum ke-6/DATA ANOVA.xlsx", sheet = "contoh hormone")
Hormone
boxplot(Hormone)
#Bentuk data menjadi sebuah vektor
r = c(t(as.matrix(Hormone)))

#Variabel perlakuan
f = c("Au","Si","Gi") #faktor variabel perlakuan
k=3 #banyak perlakuan
n=5 #banyak pengamatan per perlakuan
N=15 #banyak seluruh pengamatan

#Vektor faktor perlakuan sesuai vektor r
tm = gl(k,1,n*k,factor(f))


#Function
av = aov(r ~ tm)
summary(av) #tabel ANOVA

#F critical atau tabel
df1 = k-1
df2 = N-k
alpha = 0.05
Fcrit = qf(1-alpha,df1,df2)
Fcrit


##                                       CONTOH SOAL 2
#Input Data
setwd("D:/Kuliah/Jurusan/AnDat/Praktikum Andat/Praktikum ke-6")
library(readxl)
vitaminC <- read_excel("D:/Kuliah/Jurusan/AnDat/Praktikum Andat/Praktikum ke-6/DATA ANOVA.xlsx", sheet = "kadar asam")

#Bentuk data menjadi sebuah vektor
r1 = c(t(as.matrix(vitaminC$`0_hari`)))
r2 = c(t(as.matrix(vitaminC$`3_hari`)))
r3 = c(t(as.matrix(vitaminC$`7_hari`)))
r2 = na.omit(r2) #menghapus missing value
r3 = na.omit(r3)
r=c(r1,r2,r3)

#Variabel perlakuan
f=c("0 hari","3 hari","7 hari") #faktor variabel perlakuan
k=3 #banyak perlakuan
n1=length(r1) #banyak pengamatan pada perlakuan ke-1
n2=length(r2) #banyak pengamatan pada perlakuan ke-2
n3=length(r3) #banyak pengamatan pada perlakuan ke-3
N=n1+n2+n3 #banyak seluruh pengamatan

#Vektor faktor perlakuan sesuai vektor r
tm = factor(rep(f,times=c(n1,n2,n3)))

#Function
av = aov(r ~ tm)
summary(av) #tabel ANOVA

#F critical atau tabel
df1 = k-1
df2 = N-k
alpha = 0.05
Fcrit = qf(1-alpha,df1,df2)
Fcrit


##                                       CONTOH SOAL 3
#Input Data
setwd("D:/Kuliah/Jurusan/AnDat/Praktikum Andat/Praktikum ke-6")
library(readxl)
df = read_excel("D:/Kuliah/Jurusan/AnDat/Praktikum Andat/Praktikum ke-6/DATA ANOVA.xlsx",sheet = "contoh soal sistem rudal")
df=df[,2:5]
r=c(t(as.matrix(df)))
f1 = c("a1","a2","a3")
f2 = c("b1","b2","b3","b4")
k1 = length(f1)
k2 = length(f2)
n = 2
#vektor perlakuan
rudal = gl(k1,n*k2,n*k1*k2,factor(f1))
bahanbakar = gl(k2,1,n*k1*k2,factor(f2))
#tabel ANOVA two way
av <- aov(r ~ bahanbakar*rudal)
summary(av)
dir

library(tidyr)
library(ggplot2)
#data - read.csv(, header = T, sep = ";")
library(readxl)
data1 <- read_excel("D:/Kuliah/Jurusan/AnDat/Praktikum Andat/Praktikum ke-6/DATA ANOVA.xlsx", sheet = "contoh hormone")
data = da %>% gather("Au","Si","Gi",key = "Perlakukan", value = "Tinggi")
data = na.omit(data)
data$Perlakuan = as.factor(data$Perlakuan)
str(Hormone)

p1 = ggplot(data,aes(x = Perlakuan ,y = Tinggi)) +geom_boxplot()
p1
k = max(as.numeric(data$Perlakuan))
summary(aov(Tinggi~Perlakuan,data))
fcrit = qf(1-0.05,2,30)

library(tidyr)
library(ggplot2)
library(readxl)
DATA_ANOVA <- read_excel("DATA ANOVA.xlsx")
View(DATA_ANOVA)
data= DATA_ANOVA%>% gather("Au","Si","Gi", key= "Perlakuan", value="Tinggi")
data= na.omit(data)
data$Perlakuan=as.factor(data$Perlakuan)



str(DATA_ANOVA)
p1 = ggplot(data, aes(x=Perlakuan, y=Tinggi)) + geom_boxplot()
p1



summary(aov(Tinggi~Perlakuan,data))
fcrit= qf (1-0.05,2,30)

library(tidyr)
library(ggplot2)
library(readxl)
DATA_ANOVA <- read_excel("D:/Kuliah/Jurusan/AnDat/Praktikum Andat/Praktikum ke-6/DATA ANOVA.xlsx", sheet = "1")
View(DATA_ANOVA)
data= DATA_ANOVA%>% gather("A","B","C", key= "Perlakuan", value="Tinggi")
data= na.omit(data)
data$Perlakuan=as.factor(data$Perlakuan)



str(DATA_ANOVA)
p1 = ggplot(data, aes(x=Perlakuan, y=Tinggi)) + geom_boxplot()
p1

summary(aov(Tinggi~Perlakuan,data))
fcrit1= qf (1-0.1,2,30)
fcrit1

library(tidyr)
library(ggplot2)
library(readxl)
DATA_ANOVA <- read_excel("D:/Kuliah/Jurusan/AnDat/Praktikum Andat/Praktikum ke-6/DATA ANOVA.xlsx", sheet = "2")
View(DATA_ANOVA)
data= DATA_ANOVA%>% gather("Provider A","Provider B","Provider C","Provider D", key= "Perlakuan", value="Tinggi")
data= na.omit(data)
data$Perlakuan=as.factor(data$Perlakuan)



str(DATA_ANOVA)
p1 = ggplot(data, aes(x=Perlakuan, y=Tinggi)) + geom_boxplot()
p1

summary(aov(Tinggi~Perlakuan,data))
fcrit1 = qf (1-0.1,2,30)
fcrit1
