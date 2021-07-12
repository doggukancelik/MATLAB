clear;
clc;

f=@(x)exp(x)-4;
xl = input('xl degerini giriniz : ');
xu = input('xu degerini giriniz : ');
es = input('error degerine giriniz : ');
N =  100;
x = xl:0.1:xu;
y = f(x);
figure(1),
fplot(f);
grid on;
pause(0.7);
if( f(xl) * f(xu) > 0)
    disp('Error :  Root cannot be obained between xl and xu');
    return;
end
i=0;
while(i<=N)
    xr = xu -( (f(xu)*(xl-xu))/( f(xl)-f(xu) ) );
    %find error
     ea = abs(((xr-xl)/xr))*100;
    if( f(xl)*f(xr) < es)
        xu = xr;
    else
        xl = xr;
    end
    i = i+1;
   
    if(ea<=es)
        break;
    end
    
     msg = sprintf('Iter = %d , Estimation = %f ',i,xr);
    
    figure(1),
    plot(x,y,xr,f(xr),'o');
    grid on;
    title(msg);
    xlabel('X values');
    ylabel('Y values');
    display(xr);
end    