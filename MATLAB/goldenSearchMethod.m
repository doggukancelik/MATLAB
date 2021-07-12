%% Golden Search method 
clc
clear
close all

f = @(x)x.^2-6*x+15;
x = -20:20;
y = f(x);


figure(1);
plot(x,y);
xlabel('X Values')
ylabel('Y Values)')
grid on 

sel = input("please select 1 for maximum or 2 for minimum : ");

xl = input("XL point : ");

xu = input("XU point : ");

N =  input("Kaç iterasyon yapmak isterseniz? : ");

R = 0.61803;

i = 0;
 if(sel == 1)
     d = R * (xu - xl);
     x1 = xl + d;
     x2 = xu - d;
   while( i<N)
       if(f(x1) > f(x2))
           xl = x2;
           x2 = x1;
           d = R * (xu - xl);
           x1 = xl + d;
           xr = x1;
       else
           xu = x1;
           x1 = x2;
           d = R * (xu - xl);
           x2 = xu - d; 
           xr = x2;
       end
       
         %find error
         ea = abs(((xr - xl)/xr))*100;
   
         
    msg = sprintf('iteration = %d , Estimation = %f , Error = %f,',i,xr,ea);
     disp(msg);
     
      figure(1)
     plot(x,y,xr,f(xr),'o');
     title(msg)
     xlabel('X Values')
     ylabel('F(x)')
     grid on 
     pause(0.5); 
     i=i+1;
   end
 

 
 elseif(sel == 2)
     d = R * (xu - xl);
     x1 = xl + d;
     x2 = xu - d;
   while( i<N)
       if(f(x1) < f(x2))
           xl = x2;
           x2 = x1;
           d = R * (xu - xl);
           x1 = xl + d;
           xr = x1;
       else
           xu = x1;
           x1 = x2;
           d = R * (xu - xl);
           x2 = xu - d; 
           xr = x2;
       end
       
         %find error
         ea = abs(((xr - xl)/xr))*100;
   
         
    msg = sprintf('iteration = %d , Estimation = %f , Error = %f,',i,xr,ea);
     disp(msg);
     
      figure(1)
     plot(x,y,xr,f(xr),'o');
     title(msg)
     xlabel('X Values')
     ylabel('F(x)')
     grid on 
     pause(0.6); 
     
     i=i+1;
   end
 else
     error = sprintf('Hatalı giriş yaptınız');
 end