f = @(x) 1/(x*log(x));

a = exp(1);
b = exp(1) + 1;

n = input("Enter no of intervals :");
h = (b-a)/n;
sum=0;
for i=1:n-1
    x=a + i*h;
    if rem(i,2)==0
        sum = sum + 2* f(x);
    else
        sum = sum + 4* f(x);
    end
end

out= h/3 *(sum +f(a)+f(b));
disp(out)
