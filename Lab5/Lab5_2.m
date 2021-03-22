% x = 1, x =2 
x = [1, 2];

% f(1) = 0, f(2) = 0.6931
f = [0, 0.6931];

% f'(1) = 1, f'(2) = 0.5
df = [1, 0.5];

% Compute the approx value using Hermite interpolation
approx_value = HermitePol(x, f, df, [1.5]);

% Compute the actual value, for further computing the absolute error
real_value = log(1.5);

printf("Absolute error: %f \n", abs(real_value - approx_value));