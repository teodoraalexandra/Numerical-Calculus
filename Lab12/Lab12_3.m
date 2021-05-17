% Ex 3
f = @(x) x.^3 - x.^2 - 1;

x0 = 1;
x1 = 2;
eps = 10^(-4);
iterations = 100;
n = 0;

while n <= iterations
    n = n + 1;
    x = x1 - f(x1) * (x1 - x0) / (f(x1) - f(x0));
    if abs(x-x0) < eps
        fprintf('Valoarea aprox: %f, Iteratii: %f\n', x, n);
        return
    end
    x0 = x1;
    x1 = x;
    
end;
