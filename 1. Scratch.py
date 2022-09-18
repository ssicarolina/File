def LCM(n, r0, multiplier,increment, modulus):
  if n == 1: return r0
  else: 
    return (multiplier*LCM(n-1, r0, multiplier,increment, modulus)+increment)%modulus

n=10
for i in range(1,n+1): 
  print(LCM(i,10,2,0,11))
