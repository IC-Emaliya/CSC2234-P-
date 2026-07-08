function pivotgaussEle(A,b)%gaussian elimination method with pivoting
n=size(A,1)
x=zeros(n,1) 
%A
%0 2 1
%1 4 3
%2 2 1

%b
%2
%1
%2
     %interchange the row
     for k=1:n%k=1
       if (A(k,k)==0)%A(1,1)=0  % here zero in our question
        %swap the row
        temp=A(k,:); %A(1,:)=0 2 1
        A(k,:)=A(k+1,:); 
        A(k+1,:)=temp; 
        

        %now
        %1 4 3
        %0 2 1
        %2 2 1


        %interchange row of the matrix b
        t=b(k);
        b(k)=b(k+1);
        b(k+1)=t; 
    end
  %same as guassion
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
    