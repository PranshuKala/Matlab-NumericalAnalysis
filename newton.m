syms x;
f = cos(x) - x*exp(x);
d = diff(f);

x0 = input("Enter initial guess :");

fx = inline(f);
df = inline(d);

x1 = x0 - (fx(x0)/df(x0));

while( abs(x1-x0)> 1e-5)
    x0 = x1;
    x1 = x0 - (fx(x0)/df(x0));
    disp(x1);
end

disp(x1);









