function pivotgaussEle2(A,b)%gaussian elimination method with pivoting
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
 gaussion(A,b);
x
     end
end
    