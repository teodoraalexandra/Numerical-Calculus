axis([0 3 0 5]);
[x, f] = ginput(10);

% Return the coefficients of a polynomial - degree: 2
p = polyfit(x, f, 2); 

hold on;
xp = 0:0.01:3;

plot(x, f, 'b*');
plot(xp, polyval(p, xp), 'Color', 'g');