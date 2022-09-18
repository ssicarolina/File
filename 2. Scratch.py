def periodic2(A):
  for i in range(len(A)):
    A[i].insert(len(A),A[i][0])
    A[i].insert(0,A[i][len(A)-1])
  top = [0 for i in range(len(A[0]))]
  bot = [0 for i in range(len(A[0]))]
  for i in range(len(A[0])):
    top[i] = A[len(A)-1][i]
    bot[i] = A[0][i]
  A.insert(len(A),bot)
  A.insert(0,top)
  return A
