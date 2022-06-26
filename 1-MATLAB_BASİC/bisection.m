%% Initilization
clear;
clc;
close all;

%Bisection
f=@(x)x.^3-5;
xl=0; %baslangic
xu=3; %bitis noktasi

N=100;
es=0.00001;   %istediğimiz hata sınırı

x=xl:0.1:xu;
y=f(x);





if(f(xl)* f(xu)>0)
    disp('ERROR:THERE ARE NO ROOT');
end


i=0;
while(i<=N)
    %find midpoint
    m=(xl+xu)/2;
    
    %find error
    ea =abs((xl- m)/xl)*100;
    
    if(f(xl)* f(m)<0)
        xu=m;
    else
        xl=m;
    end
    
    
    
    i=i+1;
    msg=sprintf('Iteraition = %d,  Estimation=%f,  Error= %f',i,m,ea);
   
    
    figure(1);
    plot(x,y,m,f(m),'o');
    title(msg);
    grid on;
    pause(0.5);
   
    
    %stopping criteria
    if(ea<es)
        break;
    end
    
    

end

