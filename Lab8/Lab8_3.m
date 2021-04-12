r = 110;
p = 75;
a = 0;
b = 2 * pi;
n1 = 2;
n2 = 3;

lhs = 60*r / (r^2 - p^2);
f = @(x) sqrt(1-(p/r)^2*sin(x));

h1 = (b-a) / n1;
h2 = (b-a) / n2;
xi1 = a:h1:b;
xi2 = a:h2:b;

integral1 = h1/2*(f(xi1(1))+2*sum(f(xi1(2:end-1)))+f(xi1(end)));
integral2 = h2/2*(f(xi2(1))+2*sum(f(xi2(2:end-1)))+f(xi2(end)));

integralv1 = lhs * integral1;
integralv2 = lhs * integral2;

printf("Integral value: %d\n", integralv1);
printf("Integral value: %d\n", integralv2);