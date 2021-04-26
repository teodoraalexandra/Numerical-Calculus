n = [10:15];

for i = 1:length(n)
  H = hilb(n(i));
  k1 = cond(H, 1);
  k2 = cond(H, 2);
  kinfinity = cond(H, inf);
  printf("n = %d, k1 = %d, k2 = %d, kinfinity = %d\n", n(i), k1, k2, kinfinity);
end