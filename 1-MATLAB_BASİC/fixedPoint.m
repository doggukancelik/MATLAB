 g = @(x) cos(x);
 p0 = input('Please enter initial approximation, p0:  ');
 n = input('Please enter no. of ierations, n: ');
 tol = input('Please enter tolerance, tol: ');
 i = 1;
 while i <= n
     p = g(p0);
     if abs(p-p0) < tol
        fprintf('\nApproximate solution p = %11.8f \n\n', p)
        break;
     else
        i = i+1;
          p0 = p;
     end
     
     
    msg3=sprintf('Iteraition = %d,  Error= %f',i,abs(p-p0));
   
    
    figure(1);
    plot(p,p0,'o');
    title(msg3);
    grid on;
    pause(0.5);
 end
