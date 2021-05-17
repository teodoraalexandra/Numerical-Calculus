% Ex 1
f=@(x) cos(x);
df=@(x) -sin(x);

x0 = pi/4;
eps = 10^(-4);
iterations = 100;
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

