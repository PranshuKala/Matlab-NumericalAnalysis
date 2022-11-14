f = @(x) exp(x);
n = input("Enter no of points :");

for i=1:n
   x(i)=input("Enter value of x :");
   fx(i)=input("Enter value of fx :");
end
d = zeros(n,n);

for i=1:n
    d(i,1)=y(i);
end




