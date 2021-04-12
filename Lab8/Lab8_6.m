erf_val = erf(0.5);
a = 0;
b = 0.5;
n1 = 4;
n2 = 10;

f = @(x) e .^ (-x .^2);

h1 = (b-a) / n1; 
xi1=a:h1:b;
h2 = (b-a) / n2;
xi2=a:h2:b;

Int_simpson1 = 2/sqrt(pi) * h1/3*(f(xi1(1))+2*sum(f(xi1(3:2:end-2)))+4*sum(f(xi1(2:2:end)))+f(xi1(end)));
Int_simpson2 = 2/sqrt(pi) * h2/3*(f(xi2(1))+2*sum(f(xi2(3:2:end-2)))+4*sum(f(xi2(2:2:end)))+f(xi2(end)));

error1 = abs(Int_simpson1 - erf_val);
error2 = abs(Int_simpson2 - erf_val);

printf("Error1 = %d\n", error1);
printf("Error2 = %d\n", error2);