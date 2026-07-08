function gaussElUsePivo(A,b,i)
[n,n]=size(A);

x=zeros(n,1);
%function calling
[A,b]=pivoting(A,b,1);
% 7 2 6
% 4 0 2
% 2 5 8

for k=1:n
     if (A(k,k)==0)
        temp=A(k,:);
        A(k,:)=A(k+1,:);
        A(k+1,:)=temp;
        
        t=b(k);
        b(k)=b(k+1);
        b(k+1)=t;
    end
    for i=k+1:n
        fact=A(i,k)/A(k,k);
        for j=k:n
            A(i,j)=A(i,j)-fact*A(k,j);
        end
        b(i)=b(i)-fact*b(k);
        [A,b]
    end
end
A
b

x(n)=b(n)/A(n,n);
for i=n-1:-1:1
    sum=0;
    for j=i+1:n
        sum=sum+A(i,j)*x(j);
    end
    x(i)=(b(i)-sum)/A(i,i);
end
x
end

