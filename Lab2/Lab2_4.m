% Problem 4
% h = 0.25 
% xi = 1 + ih, i = 0, 6
% f(x) = sqrt(5x^2 + 1)
% FINITE DIFFERENCE TABLE 

n = 6;
m = zeros(n+1);
h = 0.25;

% In this for, we compute the first column of table (f0, f1 ... f6)
for i=1:n+1
  m(i, 1) = sqrt((5*(1 + (i - 1) * h))^2 + 1)
endfor

% Complete the table using the formula
% Start from k = 2 because the first column has been already completd
for k=2:n+1
  for i=1:n-k+2
    m(i,k) = m(i+1, k-1) - m(i, k-1);
  endfor
endfor
 
% Finally, print the table (shown as a matrix)
m
