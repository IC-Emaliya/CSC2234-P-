function[root]=fixedpoint(x0,steps,epes)
xr=x0;
n=1;
er=1;


while(n<=steps && er>epes)
    xr_old=xr;
    xr=g(xr_old);
    if xr ~=0
        er=abs((xr-xr_old)/xr);
    end
    error(n)=er;
    stp(n)=n;
    n=n+1;
end
plot(stp,error);
root=xr;
xlabel('stp');
ylabel('error');
end
