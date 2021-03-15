function z = AitkenPol(x,y,a)
er = 1e-3; 
[z, I] = sort(abs(x-a));
x = x(I);
y = y(I);
n = length(x)

ak = zeros(n,n);
ak(:,1) = y';
for i=2:n
    for j=1:i-1
       ak(i,j+1) = (ak(j,j)*(x(i)-a) - ak(i,j)*(x(j)-a))/(x(i)-x(j));
    end
        if abs(ak(i,i) - ak(i-1,i-1)) < er    
              errf = abs(ak(i,i) - ak(i-1,i-1))
              z  = ak(i,i)
              return
        end
end