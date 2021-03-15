% Nodes
x = [1 1.5 2 3 4];

% The values of the function calc in x
f = [0 0.17609 0.30103 0.47712 0.60206];

% Value of approx
xx = [2.5 3.25];
  
% Compute the result
result = NewtonPol(x, f, xx);

% Computing error 
i = [10:35];
y_i = i ./ 10;
printf("Max interpolation err is: %f \n", max(abs(log10(y_i) - NewtonPol(x, f, y_i))));
