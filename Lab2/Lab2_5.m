% Problem 5
% x0 = 2
% x1 = 4
% x2 = 6
% x3 = 8 
% f0 = 4
% f1 = 8
% f2 = 14 
% f3 = 16
% DIVIDED DIFFERENCE TABLE 

n = 3;
m = zeros(n+1);

% x0 x1 x2 x3 as a vector
x = [2 4 6 8];

% f0 f1 f2 f3 as a vector
f = [4 8 14 16];

% As long as we already have the values of the function, 
% we will only take them from f
for i=1:n+1
  m(i,1) = f(i)
endfor

% Complete the table using the formula
% Start from k = 2 because the first column has been already completd
for k=2:n+1 
  for i=1:n-k+2
    m(i, k) = (m(i+1, k-1) - m(i, k-1)) / (x(i+k-1) - x(i));
  endfor
endfor

% Finally, print the table (shown as a matrix)
m
