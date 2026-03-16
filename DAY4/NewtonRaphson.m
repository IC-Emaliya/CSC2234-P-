function[root]=NewtonRaphson(x0,step,epes)
n=1;
er=1;
xr=x0;

while(n<=step && er>epes)
    if df(xr)~=0
        xr_new=xr-(f(xr)/df(xr));
    end

    if xr_new~=0
        er=abs((xr_new-xr)/xr_new);
    end

    xr=xr_new;
    n=n+1;
    error(n)=er;
    stp(n)=n;
end
root=xr;
figure
plot(stp,error)
xlabel('Step')
ylabel('Relative Error')
grid on
end
