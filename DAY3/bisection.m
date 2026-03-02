function[root]=bisection(xl,xu,step,epes)
n=1;
er=1;
xm=0;

iter=[];
xm_values=[];
errors=[]; 

if f(xl)*f(xu)<0
    while(n<=step && er>epes)

        xm_old=xm;
        xm=(xl+xu)/2;

       if f(xl)*f(xm)<0
           xu=xm;
       else
           xl=xm;
       end
       if n>1
           er = abs((xm-xm_old)/xm);
       end

       iter(n)=n;
       xm_values(n)=xm;
       errors(n)=er;
       n=n+1;
    end

    root=xm;
    figure
    plot(iter,xm_values)
    xlabel('iteration')
    ylabel('root approximation')
    grid on

else

      disp('there is no root in this interval');
end
end
