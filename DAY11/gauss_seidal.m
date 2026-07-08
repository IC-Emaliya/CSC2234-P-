function [x] = gauss_seidal(A,b,x0,steps,epes)
[m,n]=size(A);
x=zeros(n,1);
k=1;

while k<steps
for i=1:n
   x(i)=0;
   for j=1:i-1 
     x(i)=x(i)+ A(i,j)*x(j);
   end
    for j=i+1:n
       x(i)=x(i)+A(i,j)*x0(j); 
    end
x(i)=(b(i)-x(i))/A(i,i);
end
if norm(x(i)-x0)<epes
    x(i);
   disp('epes is satisfy');
   break;
else
    k=k+1;
end
for i=1:n
   x0(i)=x(i);
end
end
disp('maximum no of iteration exceeded');
end