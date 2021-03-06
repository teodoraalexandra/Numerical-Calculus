A=[3, -1, 0, 0, 0, 0; -1, 3, -1, 0, 0, 0; 0, -1, 3, -1, 0, 0; 0, 0, -1, 3, -1, 0; 0, 0, 0, -1, 3, -1; 0, 0, 0, 0, -1, 3];
# A = [3 1 1; -2 4 0; -1 2 -6];

b=[2; 1; 1; 1; 1; 2];
# b=[12; 2; -5];

eps=10^(-3);
# eps=10^(-5);

N=100;

[m,n]=size(A);
x=A\b

xJ_old=zeros(m,1);
xJ_new=xJ_old;
nr_it=0;
% Jacobi
while nr_it<=N
  
  for i=1:m
    s = 0;
    for j = 1:n
        if (i ~= j)
          s = s + A(i,j)*xJ_old(j);
        end
      end
      xJ_new(i) = (b(i) -s)/(A(i,i));
  end
  
  if abs(xJ_new-xJ_old)<eps
    fprintf('Solutia x este:\n')
    disp(xJ_new)
    fprintf('Numarul de iteratii:%d\n',nr_it)
    return
  end
 
  xJ_old=xJ_new;
  nr_it=nr_it+1;
end
disp('Numarul de iteratii a fost depasit')
