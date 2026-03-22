function [sum]=lagrng(x,y,x0)

n=length(x);%2
V=zeros(n,1);
%x=[1 4]
%y=[3 15]
%x0=2
sum=0;
for i=1:n %1:2 1st iter i=1
    product=y(i);%y(1)=3
    for j=1:n %1:2 j=1  j=2
        if i ~=j % 1~=2
            product=product * (x0-x(j))/(x(i)-x(j));
                    %3/y(1)       *(x0-x(2))/(x(1)-x(2)) 
                    %y(2)      *(x0-x(1))/(x(2)-x(1)) 
        end
    end
    sum=sum+product;
end
end
