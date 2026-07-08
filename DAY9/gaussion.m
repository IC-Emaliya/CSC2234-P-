function gaussion(A,b)
n=size(A,1);% row size n=3
x=zeros(n,1);
%0
%0
%0
for k=1:n %k=1
    for i=k+1:n %i=2
        fact=A(i,k)/A(k,k);%A(2,1)/A(1,1)
        for j=k:n%j=1
            A(i,j)=A(i,j)-fact*A(k,j);
            %A(2,1)=A(2,1)-fact*A(1,1)
        end
        b(i)=b(i)-fact*b(k);
        %b(2)=b(2)-fact*b(1)
        [A b]
    end
end
A% Upper traingular matrix
b

%backward Substitution
x(n)=b(n)/A(n,n);
for i=n-1:-1:1
    sum=b(i);
    for j=i+1:n
        sum=sum-A(i,j)*x(j);
    end
    x(i)=sum/A(i,i);
end
x
end
