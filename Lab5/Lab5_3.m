% Interval [-5, 5]
x = [-5: 0.1: 5];

% f(x)
f = sin(2 .* x);

% Declare 15 equidistant nodes in [-5, 5]
t = linspace(-5, 5, 15);
d = sin(2 .* t);
v = 2 .* cos(2 .* t);

result = HermitePol(t, d, v, x);
plot(x, f, x, result, 'b*');
