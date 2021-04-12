a = 1; 
b = 2;
f = @(x) x .* log(x);
n = 1;
true_value = 0.636294368858383;
err = 0.001;

h = (b-a)/n;
xi = a:h:b;

while abs(h/2*(f(xi(1))+2*sum(f(xi(2:end-1)))+f(xi(end))) - true_value) > err
  n = n + 1;
  h = (b-a)/n;
  xi = a:h:b;
end

printf("n =  %d\n", n);
printf("Approximation = %d\n", h/2*(f(xi(1))+2*sum(f(xi(2:end-1)))+f(xi(end))));