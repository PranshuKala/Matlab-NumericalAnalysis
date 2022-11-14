A=[4.63 -1.21 3.22 ; -3.07 5.48 2.11 ; 1.26 3.11 4.57;];
b=[2.22 ; -3.17 ; 5.11;];
x0 =[0;0;0;];
n=length(b);
x=zeros(1,n);

N =  input("Enter no of iterations :");

for k=1:N
    xold =x;
    for i=1:n
        sum=0;
        for j=1:i-1
            sum = sum+ A(i,j)*x(j);
        end
        for j=i+1:n
            sum = sum + A(i,j)*xold(j)+b(i);
        end
        
    end
end