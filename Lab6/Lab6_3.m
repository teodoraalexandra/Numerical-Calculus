% Nodes 
x = 0:pi/4:2*pi;

% f(x) = cos(x)
y = cos(x);

% Interval
interval = 0:0.01:2*pi;

% Interpolation
interpolation = interp1(x, y, interval, "linear");

plot(interval, cos(interval), 'b', interval, interpolation, 'r');