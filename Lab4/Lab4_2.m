% Nodes
x = [1 2 3 4 5];

% The values of the function calc in x
f = [22 23 25 30 28];

% Value of approx
xx = [2.5];

% Compute the result
result = NewtonPol(x, f, xx);

% Plot result 
hold on 
figure(1)

X = 0:.01:6;
newton = NewtonPol(x, f, X);

plot(x, f, 'r');
plot(X, newton, 'g');