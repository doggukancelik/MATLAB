clear;
clc;
f=@(x) x.^2-10;
xl = input('Baslangic degerine giriniz : ');
xu = input('Bitis degerine giriniz : ');
es = input('Istenilen hata degerine giriniz : ');
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
     error = abs(((xr-xl)/xr))*100;
    if( f(xl)*f(xr) < 0)
        xu = xr;
    else
        xl = xr;
    end
    i = i+1;
    msg = sprintf('Iter = %d , Estimation = %f , Error = %f',i,xr,error);
    
    
    figure(1),
    plot(x,y,xr,f(xr),'o');
    title(msg);
    grid on;
    pause(0.7);
    xlabel('X values');
    ylabel('Y values');
    display(error);

    if(error<=es)
        break;
    end  
end
hold on;