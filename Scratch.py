from random import uniform
from math import cos
def fungsi(x):
  return ((cos(x))**2+1)**0.5    # 1 <= f(x) <= sqrt2

# Banyak dart
ndart = 5000
dartArray = [[0,0] for i in range(ndart)]

# Memasukkan random dart
for i in range(ndart):
  dartArray[i][0] = uniform(0,2)
  dartArray[i][1] = uniform(0,2**0.5)

# Menghitung banyak dart bawah
n_dart_bawah = 0
for i in range(ndart):
  if dartArray[i][1] < fungsi(dartArray[i][0]):
    n_dart_bawah += 1

# Menghitung luas persegi
luasPersegi = (2-0)*(2**0.5 - 0)

# Menghitung hampiran luas
luas = luasPersegi*ndart/n_dart_bawah
print(luas)
print("luas teoritis = 2.35169")
import matplotlib.pyplot as plt
xdart = [dartArray[i][0] for i in range(ndart)]
ydart = [dartArray[i][1] for i in range(ndart)]
plt.plot(xdart, ydart, "o")

xmin, xmax = 0, 2
Nx = 201
dx = (xmax-xmin)/(Nx-1)
x = [xmin+i*dx for i in range(Nx)]
y = [fungsi(xmin+i*dx) for i in range(Nx)]
plt.plot(x,y)
plt.show()
