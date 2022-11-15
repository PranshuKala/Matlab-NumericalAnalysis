a = [27 6 -1 ; 6 15 2 ; 1 1 54;];
b = [85 ; 72 ; 110;];
err = 1e-5;
x = [0 0 0];
n= input("Enter no of iterations :");

for k=1:n
    xold = x;
    for i=1:size(a,1)
        sum = 0;
        for j=1:i-1
           sum = sum+a(i,j)*x(j);
        end
        for j=i+1:size(a,1)
            sum = sum + a(i,j)*xold(j);
        end
        x(i)= (1/a(i,i))*(b(i)-sum);

    end
end
disp(x)
