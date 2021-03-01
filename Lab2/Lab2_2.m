% Problem 2
% a
t = -1:0.01:1
T1 = cos(1.*acos(t))
plot(t, T1)

T2 = cos(2.*acos(t))
plot(t, T2)

T3 = cos(3.*acos(t))
plot(t, T3)

% b
figure(2)
clf; hold on;
t = -1:0.01:1

t0 = ones(size(t))
plot(t, t0)
t1 = t;
plot(t, t1)
  
for i=2:6
 aux = t1;
 t1 = 2*t.*t1(i)-t0(i);
 plot(t, t1)
 t0 = aux;
endfor

