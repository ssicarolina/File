# Assign place, yakni tempat bidang 2D dengan berukuran mxn
m,n = 10,10
place = [[0 for i in range(n)]for j in range(m)]

# Misal sel dengan keadaan hidup bernomor 1 dan keadaan mati bernomor 0
#    Aturan transisi
# 1. Sel Mati dengan tepat 3 tetangga hidup akan menjadi hidup (lahir)
# 2. Sel Hidup dengan 2 atau 3 tetangga yang hidup akan tetap 
#    hidup (bertahan hidup)
# 3. Dalam kasus lain, suatu sel akan mati atau tetap mati (terlalu 
#    padat atau terlalu sepi)

def transisi(condition, place, i, j):
  # Menghitung banyak sel hidup di sekitar sel
  life = 0
  if place[i-1][j] == 1 : life+=1
  if place[i+1][j] == 1 : life+=1
  if place[i][j-1] == 1 : life+=1
  if place[i][j+1] == 1 : life+=1
  if place[i-1][j-1] == 1 : life+=1
  if place[i-1][j+1] == 1 : life+=1
  if place[i+1][j-1] == 1 : life+=1
  if place[i+1][j+1] == 1 : life+=1
  
  # Aturan transisi 1
  if condition == 0:
    if life == 3: place[i][j] = 1
  # Aturan transisi 2 dan 3
  else:
    if life != 2 and life != 3: place[i][j] = 0

# Taruh sel hidup 
place[3][4] = 1
place[4][4] = 1
place[6][4] = 1
place[3][5] = 1
place[2][5] = 1
place[3][3] = 1
place[5][6] = 1


# Print matriks
for i in range(m):
  for j in range(n):
    print(place[i][j], end=" ")
  print()

#  Proses transisi
for i in range(1,m-1):
  for j in range(1,n-1):
    condition = place[i][j]
    transisi(condition,place,i,j)

print()
# Print
for i in range(m):
  for j in range(n):
    print(place[i][j], end=" ")
  print()
  
