% Time interval 01:00 - 07:00
x = 1:7;
f = [13, 15, 20, 14, 15, 13, 10];

% Left hand side terms matrix 
A = [sum(x.^2), sum(x); sum(x), length(x)];

% Right hand side terms matrix
B = [sum(x.*f); sum(f)];

% B = X*A. Linsolve X depending on A and B 
X = linsolve(A, B);

% Evaluate polynomial P at a given point x
% v = X(1) * 8 + X(2) 
v = polyval(X, 8);
disp(v);

% Return the coefficients of a polynomial 
p = polyfit(x, f, 1);

fprintf('phi(x)=%f x + %f\n', p);

v2 = polyval(p, 8);
disp(v2);

% Minimum value 
E_min = sum((f-polyval(p,x)).^2);
disp(E_min);

plot(x, f, 'b*');
hold on;
xp = 1:0.01:8;
plot(xp, polyval(p, xp), 'r-');
