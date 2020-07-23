# Undergraduate Student: Arturo Burgos
# Professor: João Rodrigo Andrade
# Federal University of Uberlândia - UFU, Fluid Mechanics Laboratory - MFLab, Block 5P, Uberlândia, MG, Brazil


# Fourth exercise: Solving a Linear System --> ax = b

# Here I first set conditions

import numpy as np
print('\n')

n = 36
K = np.sqrt(n)
k = int(K)



# Initial x_k and x_k1 value

x_k = np.zeros((1,n))
x_k1 = np.ones((1,n))



# Here I set the Matrix

A = np.zeros((n,n))


for i in range(n):
    for j in range(n):
        if i == j:
            A[i,j] = -4
        elif i == j-3 or i ==j+3:
            A[i,j] = 1
        elif ((i+1) % 3 != 0 and i == j-1) or ((i+1) % 3 != 1 and i == j+1): # (i+1) because in Python we start from 0
            A[i,j] = 1

print('The coefficient Matrix is:')
print(A)
print('\n')
        


b = np.zeros(n)


for i in range(k):
    if i < k-1: # (k-1) because in Python we start from 0
        b[i] = -50
    else:
        b[i] = -150

for i in range(k,n-k):
    if (i+1)%6 != 0: # (i+1) because in Python we start from 0
        b[i] = 0
    else:
        b[i] = 100

for i in range(n-k,n):
    if i < n-1: # (k-1) because in Python we start from 0
        b[i] = -50
    else:
        b[i] = -150

print('The result Matrix is:')
print(b)
print('\n')



# Here I set the tolerance
e = 1e-10
# Here I set the iterations
ite = 0
  


# Here I set the error based in the Infinite norm  
erro = (x_k1 - x_k)/x_k1; # ---> Why the relative error has the same final result?


