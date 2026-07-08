function[x]=forward(l,b,n)

x=zeros(n,1);
%x=[0
%   0
%   0]
x(1)=b(1)/l(1,1);% first unknown value we can find using forward substitution
for i=2:n %i-2,3
    sum=b(i); %b(2)
    for j=1:i-1 %1:1
        %l(2,1)*x(1)+l(2,2)*x(2)=b(2)
        %l(3,1)*x(1)+l(3,2)*x(2)+l(3,3)*x(3)=b(3)
        sum=sum-l(i,j)*x(j);
        %l(2,1)*x(1)+l(2,2)*x(2)=sum
        %sum=sum-l(2,1)*x(1)
    end
    x(i)=sum/l(i,i);
    %x(2)=sum/l(2,2)
end
end
