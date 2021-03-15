% 13 equidistant interpolation points
x = linspace(0, 6, 13);

% Interval [0, 6]
y = 0:.01:6;

% Function e^(sin(x))
f1 = exp(sin(x));
f2 = exp(sin(y));

hold on
figure(1);

% Plot the interpolation points
scatter(x, f);

% Plot the function f and the Newton intepolation polynomial N12f
plot(x, f1, 'b*', y, f2, y, NewtonPol(x, f1, y));