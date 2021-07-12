%% Initilization
clear;
clc;

syms x;
f=x*exp(x)-1;
g=diff(f);
n=input('Enter the number of decimal places: ');
x0=input('Enter the intial approsximation: ');

figure(1),
fplot(f);
grid on;
pause(0.7);

for i=1:100
     f0=vpa(subs(f,x,x0)); %Calculating the value of function at x0
     f0_der=vpa(subs(g,x,x0)); %Calculating the value of function derivative at x0
     y=x0-f0/f0_der; % The Formula
    err=abs(y-x0./y);


    msg=sprintf('Iteraition = %d,   Error= %f',i,err);
    figure(1);
    hold on;
    plot(x0,y,'o');
    title(msg);
    grid on;
  

    
if err<n %checking the amount of error at each iteration
break
end
x0=y;

y = y - rem(y,10^-n); %Displaying upto required decimal places
fprintf('The Root is : %f \n',y);
fprintf('No. of Iterations : %d\n',i);
fprintf('HATA : %f\n',err);
   
    


end
