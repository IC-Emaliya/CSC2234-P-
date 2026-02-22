function c=MatrixMultiplicationcalling(a,b)
[m,n]=size(a);
[m1,n1]=size(b);

if n ~=m1
    error("Cannot do multiplication");
end

c=zeros(m,n1);
for i=1:m
    for j=1:n1
        for k=1:n
          c(i,j)=c(i,j)+a(i,k)*b(k,j);
          %c(1,1)=0+a(1,1)*b(1,2)

        end
    end
end

