clc;
a = [ 10  8   -3   1   16
      2   10  1   -4   9
      3  -4   10   1   10
      2   2  -3    10  11  ];


m=4;
n=5;

for j=1:m-1
    for z=2:m
        if a(j,j)==0
            t=a(j,:);a(j,:)=a(z,:);
            a(z,:)=t;
        end
    end
    for i=j+1:m
        a(i,:)=a(i,:)-a(j,:)*(a(i,j)/a(j,j));
    end
end
x=zeros(1,m);
for s=m:-1:1
    c=0;
    for k=2:m
        c=c+a(s,k)*x(k);
    end
    x(s)=(a(s,n)-c)/a(s,s);
end
x


