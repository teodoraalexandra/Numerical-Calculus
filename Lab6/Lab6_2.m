axis([0 1 0 1]);
[x, y] = ginput(5);

interval = 0:0.01:1;
hold on;

plot(x, y, '*', interval, spline(x, y, interval));