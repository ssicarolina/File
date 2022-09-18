########### UJI HIPOTESIS ##########
####   A. Uji Hipotesis RATAAN 1 POPULASI
##        A1. 	Kasus ??^2 diketahui 
#Cara Manual
#Input
x = read.csv("nama file.csv") #data
xbar = mean(x) #mean sampel
mu0 #nilai hipotesis
sigma #standar deviasi populasi
n = length(x) #banyak observasi
alpha = 0.05 #taraf signifikansi
#Statistika uji (bandingkan z hitung dengan z tabel)
z = (xbar-mu0)/(sigma/sqrt(n)) #z hitung
z.lower = qnorm(alpha) #z tabel eka arah
z.upper = qnorm(1-alpha) #z tabel eka arah
z.half.alpha = qnorm(1-alpha/2) #z tabel dwi arah
z.twosided = c(-z.half.alpha, z.half.alpha)
#p-value (bandingkan p-value dengan alpha)
pval.lower = pnorm(z) #eka arah
pval.upper = pnorm(z, lower.tail = FALSE) #eka arah
pval.twosided = 2*pnorm(z) 

#Cara Otomatis
library(TeachingDemos)
z.test(x, mu=mu0, sd=sigma,
       alternative = c("two.sided","less","greater"),
       conf.level = 0.95)


##        A2. 	Kasus ??^2 TIDAK diketahui
#Cara Manual
#Input
x #data
xbar = mean(x) #mean sampel
mu0 #nilai hipotesis
s = sd(x) #standar deviasi sampel
n = length(x) #banyak observasi
alpha = 0.05 #taraf signifikansi
#Statistika uji (bandingkan t hitung dengan t tabel)
t = (xbar-mu0)/(s/sqrt(n)) #t hitung
t.lower = qt(alpha,df = n-1) #t tabel eka arah
t.upper = qt(1-alpha, df = n-1) #t tabel eka arah
t.half.alpha = qt(1-alpha/2, df = n-1) #t tabel dwi arah
t.twosided = c(-t.half.alpha, t.half.alpha)
#p-value (bandingkan p-value dengan alpha)
pval.lower = pt(t, df=n-1) #eka arah
pval.upper = pt(t, df=n-1, lower.tail = FALSE) #eka arah
pval.twosided = 2*pt(t, df=n-1) #dwi arah

#Cara Otomatis
t.test(x, mu=mu0, alternative =
         c("two.sided","less","greater"), conf.level = 0.95)



####   B. Uji Hipotesis SELISIH RATAAN 2 POPULASI
##        B1. 	Kasus Variansi Kedua Populasi diketahui

#Input
x1, x2 #data
xbar1 = mean(x1) #mean sampel x1
xbar2 = mean(x2) #mean sampel x2
mu0 #nilai hipotesis
sigma1, sigma2 #standar deviasi populasi
n1, n2 #banyak observasi
alpha = 0.05 #taraf signifikansi


#Statistika uji (bandingkan t hitung dengan t tabel)
xbar = xbar1 - xbar2
z = (xbar-mu0)/sqrt((sigma1^2/n1)+(sigma2^2/n2)) #z hitung
z.lower = qnorm(alpha) #z tabel eka arah
z.upper = qnorm(1-alpha) #z tabel eka arah
z.half.alpha = qnorm(1-alpha/2) #z tabel dwi arah
z.twosided = c(-z.half.alpha, z.half.alpha)
#p-value (bandingkan p-value dengan alpha)
pval.lower = pnorm(z) #eka arah
pval.upper = pnorm(z, lower.tail = FALSE) #eka arah
pval.twosided = 2*pnorm(z) #dwi arah



##        B2. 	Kasus Variansi Kedua Populasi tidak diketahui 
##        B2-a. Variansi dianggap sama 

#Input
x1, x2 #data
xbar1 = mean(x1) #mean sampel x1
xbar2 = mean(x2) #mean sampel x2
mu0 #nilai hipotesis
S1 = sd(x1) #standar deviasi sampel x1
S2 = sd(x2) #standar deviasi sampel x2
n1, n2 #banyak observasi
alpha = 0.05 #taraf signifikansi

#Cara Manual
df = n1+n2-2
Sp = (((n1-1_*S1^2)+((n2-1)*S2^2))/(df)
xbar = xbar1 - xbar2
t = (xbar-mu0)/(sqrt(Sp)*(sqrt((1/n1)+(1/n2)))) #t hitung
t.lower = qt(alpha, df) #t tabel eka arah
t.upper = qt(1-alpha, df) #t tabel eka arah
t.half.alpha = qt(1-alpha/2, df) #t tabel dwi arah
t.twosided = c(-t.half.alpha, t.half.alpha)

#p-value (bandingkan p-value dengan alpha)
pval.lower = pt(t, df) #eka arah
pval.upper = pt(t, df, lower.tail = FALSE) #eka arah
pval.twosided = 2*pt(t, df) #dwi arah
      
#Cara Otomatis
t.test(x1, x2, mu=mu0, var.equal=TRUE, alternative = c("two.sided",l"less","greater"), conf.level=0.95)



##        B2-b. Variansi dianggap berbeda

#Input
x1, x2 #data
xbar1 = mean(x1) #mean sampel x1
xbar2 = mean(x2) #mean sampel x2
mu0 #nilai hipotesis
S1 = sd(x1) #standar deviasi sampel x1
S2 = sd(x2) #standar deviasi sampel x2
n1, n2 #banyak observasi
alpha = 0.05 #taraf signifikansi


#Cara Manual
df = ((S1^2/n1) + (S2^2/n2))^2/
  (((1/(n1-1))*(S1^2/n1)^2)+((1/(n2-1))*(S2^2/n2)^2))
xbar = xbar1 - xbar2
t = (xbar-mu0)/(sqrt((S1^2/n1)+(S2^2/n2))) #t hitung
t.lower = qt(alpha, df) #t tabel eka arah
t.upper = qt(1-alpha, df) #t tabel eka arah
t.half.alpha = qt(1-alpha/2, df) #t tabel dwi arah
t.twosided = c(-t.half.alpha, t.half.alpha)
#p-value (bandingkan p-value dengan alpha)
pval.lower = pt(t, df=n-1) #eka arah
pval.upper = pt(t, df=n-1, lower.tail = FALSE) #eka arah
pval.twosided = 2*pt(t, df=n-1) #dwi arah
#Cara Otomatis
t.test(x1, x2, mu=mu0, var.equal=FALSE, alternative = c("two.sided","less","greater"), conf.level=0.95)




####   C. Uji Hipotesis RATAAN BERPASANGAN

#Input
d = x1 - x2 #data
dbar = mean(d) #mean sampel
mu0 #nilai hipotesis
Sd = sd(d) #standar deviasi sampel
n = length(d) #banyak observasi
alpha = 0.05 #taraf signifikansi

#Cara Manual
t = (dbar - mu0)/(sd/sqrt(n)) #t hitung
t.lower = qt(alpha,df = n-1) #t tabel eka arah
t.upper = qt(1-alpha) #t tabel eka arah
t.half.alpha = qt(1-alpha/2) #t tabel dwi arah
t.twosided = c(-t.half.alpha, t.half.alpha)
#p-value (bandingkan p-value dengan alpha)
pval.lower = pt(t, df=n-1) #eka arah
pval.upper = pt(t, df=n-1, lower.tail = FALSE) #eka arah
pval.twosided = 2*pt(t, df=n-1) #dwi arah
#Cara Otomatis
t.test(x1, x2, mu=mu0, paired=T, alternative = c("two.sided",l"less","greater"), conf.level=0.95)




####   D. Uji Hipotesis VARIANSI 1 POPULASI
#Input
x #data
sigma0 #nilai hipotesis
S = sd(x) #standar deviasi sampel x
n = length(d) #banyak observasi
alpha = 0.05 #taraf signifikansi

#Cara Manual (Bandingkan chi hitung dan chi tabel)
chi = (n-1)*S^2/sigma0 #chi hitung
chi.lower = qchisq(alpha, df=n-1) #chi tabel eka arah
chi.upper = qchisq(1-alpha, df=n-1) #chi tabel eka arah
chi.half.alpha = qchisq(1-alpha/2, df=n-1) #chi tabel dwi arah
chi.twosided = c(-chi.half.alpha, chi.half.alpha)
#P-value (bandingkan p-value dengan alpha)
pval.lower = pchisq(chi, df=n-1) #eka arah
pval.upper = pchisq(chi, df=n-1, lower.tail = FALSE) #eka arah
pval.twosided = 2*pchisq(chi, df=n-1) #dwi arah

#Cara Otomatis
library(TeachingDemos)
sigma.test(x, sigma=sqrt(sigma0), alter



####   E. Uji Hipotesis VARIANSI 2 POPULASI

#Input
x1, x2 #data
S1 = sd(x1) #standar deviasi sampel x1
S2 = sd(x2) #standar deviasi sampel x2
n1 = length(x1) #banyak observasi x1
n2 = length(x2) #banyak observasi x2
alpha = 0.05 #taraf signifikansi


#Cara Manual (Bandingkan F hitung dan F tabel)
F = S1^2/S2^2 #F hitung
F.lower = qf(alpha, n1-1, n2-1) #chi tabel eka arah
F.upper = qf(1-alpha, n1-1, n2-1) #chi tabel eka arah
F.half.alpha = qf(1-alpha/2, n1-1, n2-1) #chi tabel dwi arah
F.twosided = c(-F.half.alpha, F.half.alpha)
#P-value (bandingkan p-value dengan alpha)
pval.lower = pf(F, n1-1, n2-1) #eka arah
pval.upper = pf(F, n1-1, n2-1, lower.tail = FALSE) #eka arah
pval.twosided = 2*pf(F, n1-1, n2-1) #dwi arah

#Cara Otomatis
var.test(x1, x2, ratio = 1, alternative = c("two.sided","less", "greater"), conf.level = 0.95)








