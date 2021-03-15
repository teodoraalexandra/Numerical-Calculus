function N = NewtonPol(x,f,xx)
% x - nodes
% f - the values of the function calc in x
% xx - value of approx

n = length(x) - 1;

% divided differences table
m = zeros(n+1);
m(:, 1) = f';

% As long as we already have the values of the function,
% we will only take them from f
for i=1:n+1
  m(i, 1) = f(i)
endfor

% Complete the table using the formula
% Start from k = 2 because the first column has been already completd
for k=2:n+1
  for i=1:n-k+2
    m(i, k)= (m(i+1, k-1) - m(i, k-1)) / (x(i+k-1) - x(i));
  endfor
endfor

% Approximation of function f at points in x using Newton interpolation 
% polynomial with the nodes from vector x
lx = length(xx);
p = ones(1,lx);
s = m(1,1) * ones(1,lx);
for j=1:lx
  for i=1:n
    p(j)=p(j)*(xx(j)-x(i));
    s(j)=s(j)+p(j)*m(1,i+1);
  end
end

N = s;

endfunction