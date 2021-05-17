% Ex 2
f=@(x) x - 0.8 * sin(x) - (2 * pi / 10);
df=@(x) 1 - 0.8 * cos(x);

x0 = 1;
eps = 10^(-4);
iterations = 6;
n = 0;

while n <= iterations
    n = n + 1;
    x = x0 - f(x0) / df(x0);
    if abs(x-x0) < eps
        fprintf('Valoarea aprox: %f, Iteratii: %f\n', x, n);
        return
    end
    x0 = x;
    
end;