clear;
clc;

syms x;
e = 22/7;
g=@(x)exp(-x);

x1 = input('x1 degerine giriniz : ');
x2 = input('x2 degerine giriniz : ');

N =  30;
err = 0.001;


figure(2),
fplot(g);
grid on;
pause(0.7);

i=0;
while(i<=N)
    
     x2 = g(x1);
     error = abs(((x2-x1)/x2))*100;
     display(error); 
     x1 = x2;
    i = i+1;
    if(error<=err)
        break;
    end
    
    msg = sprintf('Iter = %d , Estimation = %f , Error = %f',i,x2,error);
    figure(2),
    hold on;
    plot(x1,g(x1),'o');
    title(msg);
    grid on;
    pause(0.7);
    xlabel('X values');
    ylabel('Y values');

    
    
end
