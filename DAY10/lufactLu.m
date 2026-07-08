function lufactLu(A,b)

if(A(1,1)~=0)
    n=size(A,1);
    U=A;
    L=eye(n);

    x=zeros(n,1);

    for k=1:n
        for i=k+1:n
            fact=U(i,k)/U(k,k);
            L(i,k)=fact;
            for j=k:n
                U(i,j)=U(i,j)-fact*U(k,j);
            end
        end
    end
    L
    U
end

% forward Substitution
[y]=forward(L,b,n)

% backward Substitution
[x]=backward(U,y,n)
end

