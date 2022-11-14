clc;
n = input("Enter no of points :");
for i=1:n
   x(i)=input("Value of x :");
   fx(i)= input("Value of fx :");
end
p= 0.43;

for i=1:n
    l(i)=1;
    for j=1:n
        if j~=i
            l(i)= l(i)*(p-x(j))/(x(i)-x(j));
        end
     end
end
sum =0;

for i=1:n
    sum = sum + (l(i)*fx(i));
end
disp(sum)
