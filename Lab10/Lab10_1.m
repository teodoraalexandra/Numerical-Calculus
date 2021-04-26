% a).
A = [10 7 8 7; 7 5 6 5; 8 6 10 9; 7 5 9 10];
b = [32; 23; 33; 31];
x = gaussPivoting(A, b);

printf("a).\n");
printf("Result = %d\n", x);
printf("\n\n");

% b).
bTilda = [32.1; 22.9; 33.1; 30.9];
xTilda = gaussPivoting(A, bTilda);

printf("b).\n");
printf("Result = %d\n", xTilda);

inputRelativeError = norm((b - bTilda)) / norm(b)
outputRelativeError = norm((x - xTilda)) / norm(x)
error = outputRelativeError / inputRelativeError;

printf("Error = %d\n", error);
printf("\n\n");

% c).
ABar = [10 7 8.1 7.2; 7.08 5.04 6 5; 8 5.98 9.89 9; 6.99 4.99 9 9.98];
xBar = gaussPivoting(ABar, b);

printf("c).\n");
printf("Result = %d\n", xBar);

inputRelativeError = norm((A - ABar)) / norm(A)
outputRelativeError = norm((x - xBar)) / norm(x)
error = outputRelativeError / inputRelativeError;

printf("Error = %d\n", error);
printf("\n\n");

