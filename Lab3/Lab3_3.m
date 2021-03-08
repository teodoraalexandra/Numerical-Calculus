function L = Lab3_3(x,y,xx)
  x = linspace(0, 10, 21);
  y = (1 + cos(pi * x))./ (1 + x);
  xx = 0:0.01:10;
  
m = length(x);
P = zeros(1,m);
N = length(xx);
L = zeros(1,N);
for j = 1:N
  s1 = 0;
  s2 = 0;
  for i = 1:m
    P(i) = AI_test(i,x);
  s1 = s1 + P(i)*y(i)/(xx(j)-x(i));
  s2 = s2 + P(i)/(xx(j)-x(i));
endfor
L(j) = s1/s2;
end

plot(xx, L, xx, (1 + cos(pi * xx))./ (1 + xx));
endfunction