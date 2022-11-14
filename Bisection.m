a= input("intial first value :");
b= input("second value :");
c= input("Enter no of iterations :");
n= 0;

f = @(x) x^3 + 4*x^2 -10 ;
d = (a+b)/2;
e = abs(f(d));

while(e > 1e-3 || n>c)
    if(f(a)*f(d)<0)
        b = d;
    else
        a = d;
    end
    d = (a+b)/2;
    e = abs(f(d));
    disp(d);
end

disp(d);



