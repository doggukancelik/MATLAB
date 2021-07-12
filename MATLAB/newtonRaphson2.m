clear;
clc;
close all;
f=@(x)x.^3;
xl = input('xl degerine giriniz : ');
xu = input('xu degerine giriniz : ');
es = input('Error in degerine giriniz : ');
N =  13;
x = xl:0.1:xu;
y = f(x);
figure(1),
plot(x,y);
grid on;
pause(0.7);
if( f(xl) * f(xu) > 0)
    
    disp('Error!!!');
    return;
end

i=0;
while(i<=N)
    
    xr = xu -( (f(xu)*(xl-xu))/( f(xl)-f(xu) ) );

     erro = abs(((xr-xl)/xr))*100;
    if( f(xl)*f(xr) < 0)
        xu = xr;
    else
        xl = xr;
    end
    i = i+1;
    msg = sprintf('Iter = %d , Estimation = %f , Error = %f',i,xr,erro);
    figure(1),
    plot(x,y,xr,f(xr),'o');
    title(msg);
    xlabel('X values');
    ylabel('Y values');
    display(erro);
    if(erro<=es)
        break;
    end
    
end