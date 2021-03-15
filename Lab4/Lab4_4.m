% Values
x = [64, 81, 100, 121, 144, 255, 196];

% Function
y = sqrt(x);

% What should we approximate
a = 115;

% Use Aitken algorithm
result = AitkenPol(x, y, a);

