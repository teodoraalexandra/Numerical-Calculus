% Exercise 1
a = [1 2 3]
b = [4 5 6]'
c = a * b
d = b'
e = a.*d
f = a.^2
g = a.^d
v = 1:6
w = 2:3:10
y = 10:-1:0
exp(a)
exp(1) %number e 
sqrt(a)
m = max(a)
[m, k] = max(a)
h = [-2 -9 8]
k = abs(h)

% Exercise 2 - Polynomials
p1 = [2 -5 0 8]
polyval(p1, 2)
p2 = [1 -5 -17 21]
roots(p2)

% Exercise 3 - Graphs 
% 1
x = 0:0.01:1;
y1 = exp(10.*x.*(x-1)).*sin(12.*pi.*x);
y2 = 3.*exp(5.*x.^2-1).*cos(12.*pi.*x);
plot(x,y2,'r')

% 2
t = 0:0.01:10*pi;
a = 5;
b = 10;
x = (a+b)*cos(t)-b*cos((a/b+1)*t);
y = (a+b)*sin(t)-b*cos((a/b+1)*t);
figure(1)
plot(x, y)

% 3
x = 0:0.01:2*pi;
f1 = cos(x);
f2 = sin(x);
f3 = cos(2*x);
figure(2)
plot(x, f1, 'r')
hold on
plot(x, f2, 'g')
plot(x, f3, 'b')

% 4
x1 = -1:0.01:0
x2 = 0:0.01:1
f1 = x1.^3 + sqrt(1-x1)
f2 = x2.^3 - sqrt(1-x2)
figure(3)
plot(x1, f1, 'r', x2, f2, 'g');

% 5
x = 0:50;
x1 = 0:2:50;
x2 = 1:2:50;
f1 = x1/2;
f2 = 3*x2 + 1;
figure(4)
plot(x1, f1, 'r', x2, f2, 'g');

% 6
x = 0:0.01:50;
g = 1;
i = 0;
while i < 6
  i = i+1;
  g = 1+1/g;
endwhile
disp(g);

% 7
[x, y] = meshgrid(-2:0.1:2, -4:0.1:4);
z = exp(-((x-1/2).^2 + (y-1/2).^2));
mesh(x,y,z)

