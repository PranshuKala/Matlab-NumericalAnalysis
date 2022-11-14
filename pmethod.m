A = [ 4 1 0; 1 20 1; 0 1 4;];
x = [1;1;1;];

tol =input("Enter tolerance :");

k0=1; 
k=0;

while abs(k0-k)>tol
    y=A*x;
    k0=k;
    k=abs(norm(y,"inf"));
    x=y/k;
end
disp(k)
disp(x)




