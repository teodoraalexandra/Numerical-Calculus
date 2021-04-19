# a). Use the rectangle formula (1) to evaluate the integral
a = 1;
b = 1.5;
x = [a:0.01:b];

f = @(x) e .^ (-x .^ 2);
result = (b-a) * f((a+b) / 2);
printf('Integral evaluation using formula (1): %.20d\n', result);

# b). Plot the graph of the function f and the graph of the rectangle 
#     which area approximates the integral by formula (1)
hold on;
fplot(f, [a, b]);
fill([1, 1.5, 1.5, 1, 1], [0, 0, f(1.25), f(1.25), 0], 'r')

# c). Use the repeated rectangle formula (2), 
#     for n = 150 and 500; to evaluate the integral
n1 = 150;
n2 = 500;

function y = repeated_rectangle(a, b, f, n)
  h = (b-a) / n;
  x1 = a + h / 2;
  s = f(x1);
  i = [2:n];
  xi = x1 + (i-1) * h;
  s = s + sum(f(xi(1: end)));
  y = h * s;
end

printf("f for n = 150: %.20d\n", repeated_rectangle(a, b, f, n1));
printf("f for n = 500: %.20d\n", repeated_rectangle(a, b, f, n2));