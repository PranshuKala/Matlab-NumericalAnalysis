x0 = input("Enter initial guess :");
n= input("Input no of iterations :");

f = @(x) 2*sin(pi*x)+x;
g = @(x) exp(-x);
output = g(x0);

while( abs(output-x0) > 1e-2 )
      x0 = output;
      output = g(x0);
      disp(x0);


end
disp(x0);