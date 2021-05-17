% Ex 4
f = @(x) (x - 2) ^ 2 - log(x);

a = 1;
b = 2;
eps = 10^(-4);
iterations = 100;
n = 0;

while n <= iterations
    n = n + 1;
    c = ( a + b ) / 2;
    if f(a) * f(c) <= 0
        b = c;
    else
        a = c;
    end;
    
    if abs(a-b) < eps
        fprintf('Valoarea aprox: %f, Iteratii: %f\n', c, n);
        return
    end;
    
end;