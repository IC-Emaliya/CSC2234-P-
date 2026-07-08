function Euler(a, b, h, y1)
    n = (b - a) / h; %1-0/0.2=5
    x = zeros(n+1, 1);%6
    y = zeros(n+1, 1);%6
    exact = zeros(n+1, 1);
    
    x(1) = a; %0
    y(1) = y1;%1
    exact(1) = g(x(1));%exact(1)=g(0)=1
    
    for i = 1:n
        x(i+1) = x(i) + h;
        %x(2)=0+0.2=0.2
        y(i+1) = y(i) + h * f(x(i), y(i));%y(2)
        exact(i+1) = g(x(i+1));%exact(2)
    end
    [x y]
    plot(x, y, 'b-o'); hold on; 
    plot(x, exact, 'r--');
    legend('Euler Approximation', 'Exact Solution');
    xlabel('x');
    ylabel('y');
    title('Euler Method vs Exact Solution');
   
 
end

function dy = f(x, y)
    dy = x + y;
end

function y = g(x)
    y = 2 * exp(x) - x - 1;
    %y=2*1-0-1=1
end
