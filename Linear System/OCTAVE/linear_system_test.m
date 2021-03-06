# Undergraduate Student: Arturo Burgos
# Professor: João Rodrigo Andrade
# Federal University of Uberlândia - UFU, Fluid Mechanics Laboratory - MFLab, Block 5P, Uberlândia, MG, Brazil

clear all;
clc;

# Forth exercise: Solving a Linear System --> Ax = b

# Here I set the A matrix

A =[-4 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;...
    1 -4 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;...
    0 1 -4 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;...
    1 0 0 -4 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;...
    0 1 0 1 -4 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;...
    0 0 1 0 1 -4 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;...
    0 0 0 1 0 0 -4 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;...
    0 0 0 0 1 0 1 -4 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;...
    0 0 0 0 0 1 0 1 -4 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;...
    0 0 0 0 0 0 1 0 0 -4 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;...
    0 0 0 0 0 0 0 1 0 1 -4 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;...
    0 0 0 0 0 0 0 0 1 0 1 -4 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;...
    0 0 0 0 0 0 0 0 0 1 0 0 -4 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;...
    0 0 0 0 0 0 0 0 0 0 1 0 1 -4 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;...
    0 0 0 0 0 0 0 0 0 0 0 1 0 1 -4 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;...
    0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -4 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;...
    0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 -4 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;...
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 -4 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;... 
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -4 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0;... 
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 -4 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0;... 
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 -4 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0;... 
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -4 1 0 1 0 0 0 0 0 0 0 0 0 0 0;... 
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 -4 1 0 1 0 0 0 0 0 0 0 0 0 0;... 
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 -4 0 0 1 0 0 0 0 0 0 0 0 0;... 
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -4 1 0 1 0 0 0 0 0 0 0 0;... 
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 -4 1 0 1 0 0 0 0 0 0 0;... 
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 -4 0 0 1 0 0 0 0 0 0;... 
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -4 1 0 1 0 0 0 0 0;... 
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 -4 1 0 1 0 0 0 0;...
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 -4 0 0 1 0 0 0;... 
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -4 1 0 1 0 0;... 
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 -4 1 0 1 0;... 
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 -4 0 0 1;... 
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -4 1 0;... 
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 -4 1;... 
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 -4];

# Here I set the b matrix     
b = [-50 -50 -50 -50 -50 -150 ...
      0 0 0 0 0 -100 ...
      0 0 0 0 0 -100 ...
      0 0 0 0 0 -100 ...
      0 0 0 0 0 -100 ...
      -50 -50 -50 -50 -50 -150];

# Initial x_k and x_k1 value
x_k = [0 0 0 0 0 0 ...
       0 0 0 0 0 0 ...
       0 0 0 0 0 0 ...
       0 0 0 0 0 0 ...
       0 0 0 0 0 0 ...
       0 0 0 0 0 0];

x_k1 = [1 1 1 1 1 1 ...
        1 1 1 1 1 1 ...
        1 1 1 1 1 1 ...
        1 1 1 1 1 1 ...
        1 1 1 1 1 1 ...
        1 1 1 1 1 1];

# Here I set the tolerance
e = 1e-3;

n = length(b); 

# Here I set the iterations
ite = 0;
  

# Here I set the error based in the Infinite norm  
#erro = (x_k1 - x_k)/x_k1; # ---> Why the relative error has the same result? 
erro = norm((x_k1 - x_k),Inf);
  
tic
while erro > e #|| iterations <100
  for i = 1:n
    
    x_k1(i) = b(i);
    
    for j = 1:i-1 # Here there is a problem, because if i = 0 ->  this for initilize with 1 and go to zero, the thing is 
    # with MATLAB there is no problem with the compilation 

      x_k1(i) =  x_k1(i) - A(i,j)*x_k(j);
    
    endfor
    
    for j = i+1:n
      
      x_k1(i) =  x_k1(i) - A(i,j)*x_k(j);
      
    endfor
  
    x_k1(i) = x_k1(i)/A(i,i);
  
  endfor
 
  erro = norm((x_k1 - x_k),Inf);
  x_k = x_k1;
  ite = ite +1;

endwhile
toc
fprintf("the number of iterations of the system is: ");
disp(ite);
disp(x_k1);
disp(erro);

# Here I set the nodes temperature output format

for i = 1:n
  if mod(i,6) !=0
    (x_k1(i))
  else
    fprintf("\n")
  endif
endfor