% Nodes
x = [0, pi/2, pi, 3*pi/2, 2*pi];

% f(x) = sin(x)
y = sin(x);

% a
printf("sin(pi/4): %f\n", sin(pi/4));
printf("Cubic natural spline: %f\n", spline(x, y, pi/4));
printf("Cubic clamped spline : %f\n", spline(x, [1 y 1], pi/4));

% b
interval = 0:0.01:2*pi;
hold on;

plot(interval, sin(interval), 'Color', 'r');
plot(interval, spline(x, y, interval), 'Color', 'b');
plot(interval, spline(x, [1, y, 1], interval), 'Color', 'g');

legend('sin(x)', 'cubic', 'clamped');


