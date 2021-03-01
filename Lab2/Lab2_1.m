% Problem 1

x1 = 0:0.01:1
subplot(2,2,1)
f1=x
plot(x1, f1)

subplot(2,2,2)
f2=3/2*x.^2 - 1/2
plot(x1, f2)

subplot(2,2,3)
f3=5/2*x.^3 - 3/2.*x
plot(x1, f3)

subplot(2,2,4)
f4=35/8*x.^4 - 15/4.*x.^2 + 3/8
plot(x1, f4)


