x = [0, 10, 20, 30, 40, 60, 80, 100];
f = [0.0061, 0.0123, 0.0234, 0.0424, 0.0738, 0.1992, 0.4736, 1.0133];

% Return the coefficients of a polynomial - degree: 2
p1 = polyfit(x, f, 2);

% Return the coefficients of a polynomial - degree: 4
p2 = polyfit(x, f, 4);

% Find the value for T = 45
v1 = polyval(p1, 45)
v2 = polyval(p2, 45)

% Approximation errors
TrueValue = 0.095848;
printf("Approximation error for degree 2 %f\n", abs(TrueValue - v1));
printf("Approximation errpr for degree 4 %f\n", abs(TrueValue - v2));

% Plot the interpolation points, 
% the least squares approximants,
% the interpolation polynomial
plot(x, f, 'b*');
hold on;
xp = 1:0.01:100;
plot(xp, polyval(p1, xp), 'Color', 'r');
plot(xp, polyval(p2, xp), 'Color', 'g');