function cholesky(A,b)
n=size(A,1);
x=zeros(n,1); %x=zeros(3,1) x=[0;0;0]
U=zeros(n); %U=[0 0 0;0 0 0;0 0 0]

if A==A'   % check if A is symmetric
    for i=1:n % row i=2
        for j=i:n% column j=2:3 j=2 j=3
            sum=0;
            for k=1:i-1 % 1:2-1:i:1
                sum=sum+U(k,i)*U(k,j);
                %sum=0+U(1,2)*U(1,3)=2*3=6
            end
            if i==j %2==2
                U(i,j)=sqrt(A(i,i)-sum);
            else
                U(i,j)=(A(i,j)-sum)/U(i,i);
            end
        end
    end
else
    error('Matrix A is not symmetric');
end
U
L=U'
% forward Substitution
[y]=forward(L,b,n)

% backward Substitution
[x]=backward(U,y,n)
end



          