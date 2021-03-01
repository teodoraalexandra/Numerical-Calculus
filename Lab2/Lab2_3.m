%Problem 3
figure(1);
hold on;

x = -1:0.001:3;

for n = 1:6
  for k = 0:n
    f = x .^ k ./ factorial(k);
    plot(x, f)
  endfor
endfor
