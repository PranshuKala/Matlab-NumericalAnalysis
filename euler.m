f=@(t,y)(y-t^2+1);
t0=input("enter the initial value");
b=input("enter at which value is to be evaluated");
h=input("input step size");
y0=input("the value of function at t0");
n=(b-t0)/h;
for i=1:n
    y1=y0+h*f(t0,y0);
    t0=t0+h;
    y0=y1;
end
disp(y1);
