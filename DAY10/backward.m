function[x]=backward(u,b,n)

x=zeros(n,1);
%x=[0
%   0
%   0]
x(n)=b(n)/u(n,n);% last unknown value we can find using backward substitution
for i=n-1:-1:1 
    sum=b(i); 
    for j=i+1:n
        sum=sum-u(i,j)*x(j);
    end
    x(i)=sum/u(i,i);
end
end
