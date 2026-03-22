function [sum]=lagrng2(x,y,x0)

n=length(x);%2
V=zeros(n,1);
%x=[1 3 2 ]
%y=[6 4 5]
%x0=1
sum=0;
for i=1:n %1:3 1st iter i=1
    product=y(i);%y(1)=6
    for j=1:n %1:3 j=1  j=2 j=3
        if i ~=j % 1~=2
            product=product * (x0-x(j))/(x(i)-x(j));
                    %/y(1)       *(x0-x(2))/(x(1)-x(2)) 
                    %y(1)      *(x0-x(3))/(x(1)-x(3)) 
                   
        end
    end
    sum=sum+product;
end
disp sum;
end
