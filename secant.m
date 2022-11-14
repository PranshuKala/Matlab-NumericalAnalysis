f=  @(x) x^2 -17;
x0 = input("Enter first val :");
x1 = input("Enter second val :");

x2 = x1 - f(x1)*((x1 - x0)/(f(x1)-f(x0)));

while( abs(x2-x1) > 1e-3)
    x0 =x1;
    x1 =x2;
    x2 = x1 - f(x1)*((x1 - x0)/(f(x1)-f(x0)));
    disp(x2);
    
end

disp(x2);



