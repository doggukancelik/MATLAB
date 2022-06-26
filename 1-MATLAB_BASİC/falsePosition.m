
equan=@(x) x^2+x-2;
i=1;
while(i)
    xl=input('Enter lower value:');
    xu=input('Enter upper value: ');
    e=input('Enter accuracy: ');
    if equan(xl)*equan(xu)<0
        i=0;
    else

        warning('Enter proper range');
    end
end
if equan(xl)<0
    xn=xl;
    xp=xu;
else
    xn=xu;
    xp=xl;
end

xm=xl;
while (abs(equan(xm))>e)
   xm=(xn*equan(xp)-xp*equan(xn))/(equan(xp)-equan(xn));
   err=abs(xm-xn/xm)
    if equan(xm)<0
        xn=xm;
    else
        xp=xm;
    end
    
   msg2=sprintf( 'Error= %f',err);
   
    
    figure(2);
    plot(xl,xm,'o');
    title(msg2);
    grid on;
    pause(0.5);
    
    
end