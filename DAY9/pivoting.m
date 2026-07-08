function[A1,b1]= pivoting(A1,b1,i)% you can put i as 1 always
[n,n]=size(A1)
p=i;%p=1
big=abs(A1(i,i)) %abs(A1(1,1))=2
disp('Before the pivoting')
A1
% 2 5 8
% 4 6 2
% 7 2 6
disp('After pivoting')
for j=i+1:n% j=3 
    dummy=abs(A1(j,i)); %abs(A1(3,1))
    if dummy>big
        big=dummy;
        p=j;%p=3% at last 
    end
end 
    if p~=i 
        for k=i:n
            dummy=A1(i,k); 
            A1(i,k)=A1(p,k);
            A1(p,k)=dummy;
        end
        dummy=b1(i); 
        b1(i)=b1(p);
        b1(p)=dummy;
    end
    
    A1
    b1
end

