function[yint2]=newtonInt(x,y,xi)
%x=[1 2 4] index - 1 2 3
%y=[2 3 10] index - 1 2 3
%xi=3
%f2(xi)=b1+b2(xi-x1)+b3(xi-x1)(xi-x2)
n=length(x);% n=3
fdd=zeros(n);
% create empty vector with 3*3
% 0 0 0
% 0 0 0
% 0 0 0
yint=zeros(n,1); % 3,1
% create empty vector with 3*1
%2
%0
%0
Ea=zeros(n-1,1);%2,1
% create empty vector with 2*1
%0
%0

fdd(:,1)=y(:);% update fdd with first colum of y
% 2  0 0
% 3  0 0
% 10 0 0
%FDD table
for j=2:n %2:3 
    for i=1:n+1-j %1:2
        %2(1,1)  0(1,2) 0(1,3)
        %3(2,1)  0(2,2) 0(2,3)
        %10(3,1) 0(3,2) 0(3,3)
        fdd(i,j)=(fdd(i+1,j-1)-fdd(i,j-1))/(x(i+j-1)-x(i))
        %fdd(1,2)=(fdd(2,1)  -fdd(1,1))/(x(2)-x(1))
    end
end
xterm=1
yint(1)=fdd(1,1)%b1

for order=2:n %2,3 starting from 2 because already find values in first column by replacing y values
    xterm=xterm*(xi-x(order-1));%xi-x1
    yint2=yint(order-1)+fdd(1,order)*xterm;%yint(1)
    %yint2=yint(1)+fdd(1,2)*(xi-x1)
    %yint2=b1+b2*(xi-x1) ist order
    %yint2=b1+b2*(xi-x1)
    Ea(order)=yint2-yint(order-1);
    yint(order)=yint2;
    %yint(2)=yint2
end
%f2(x)=b1+b2(xi-x1)+b3(xi-x1)(xi-x2)
%x y    1st                2nd
%1 %2  (3-2)/(2-1)=1       3.5-1/4-1=0.833   
%2 %3  (10-3)/(4-2)=3.5000  0
%4 %10   0                  0
%we are going to find 1st and 2nd
end


