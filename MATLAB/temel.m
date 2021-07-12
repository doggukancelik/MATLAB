clc;      %command window
clear;    %workspace

% ... hesap işlemleri
% x=2;    ...  bu da bir yorumdur
% y=3;    % bu da yorumdur
% 
% z=x+y;
% 
% 
% 
% 
% ...matris 
% 
%  x=[1,2,3;
%    2,3,4;
%    5,6,7];
% a=size(x);
% a;
% 
% 
% y=[1,2,34,5,6,5,8,9];
% b=length(y);
% b;
% x(:,2);
% x(2,:);
% 
% 
% ... grafik çizim işlemleri
%     ... workspace değer seç ve plots sekmesinden grafik çiz. command windowsdaki kodu scripte alabilirsin.
%     
% x=1:1:7;
% y=x.^2;
% figure(2);     ... figure tablo oluşturur.grafikleri istediğimiz yerde çalıştırırz.
% stem(x,y)
% plot(x,y);     ...  grafik çizim yaparız
% grid on;       ... kareleme yöntemi
% xlabel('x degerleri');
% ylabel('y degerleri');
% title('başlık');
% 
% 
% 
% 
% ...  çoklu grafik çizme           hold on ile olur
% 
% x=0:1:10;
% y1=x;
% y2=2*x;
% y3=3*x;
% 
% figure (3);
% plot(x,y1,'ob');  %blue o o o o o o o o o 
% hold on  ... grafik aralarına koy , değerler arasına değil
% plot(x,y2,'--r')     %red  - - - - -
% hold on 
% plot(x,y3,':k' , 'LineWidth',2);    %black  . . . . . .  kalınlık 2
% grid on
% legend('y1 grafiği','y2 grafiği','y3 grafiği')
% %subplot var ama benim için önemi yok 
% 
% 
% 
% 
% 
% 
% ... polar grafik çizimi   // buranın çalışması için diğer yerleri kapat. net görmek için
%     
% figure(4);   
% x=0:pi/100:2*pi;
% y=cos(x);
% y2=-sin(x);
% polarplot(x,y,'r')
% hold on;
% polarplot(x,y2,'b');



% ... if elseif else end
% x=5;
% y=3;
% 
% if x>7
%     y=5;
% elseif x==5
%         y=40;
% else 
%     y=10;
% end
% y



...while döngüsü
    
% i=1;
% while i<11
%     x(i)=i*3;
%     i=i+1;
% 
% end
% x







...for döngüsü 
%     for i=1:1:10    ... 1 2 3 
%         y(i)=i;
%     end
%     y
    
% for i=1:1:10         ... 10 9 8 ..
%     z(11-i)=i;
%  end  
% z
........................
% k=1;
% for i=1:1:3                  ... 3*3lük matris iç içe for döngüsü
%     for j=1:1:3
%         t(i,j)=k;
%         k=k+1;
%     end
% end
% t








... türev integral 
% syms x
% diff(sin(x));
% integralSonucu=diff(cos(x));  integralSonucu;
% 
% syms y;
% 
% grafik=int(cos(x));
% x=-pi:pi/100:pi;
% grafik=sin(x);
% plot((180*x/pi),grafik);  grid
% 
% syms t
% diff(sin(t),2)  ... 2.dereceden diff
%     
% denklem=@(x) cos(x)+1;         ... denklem tanımlama işlemi 
% integral(denklem,0,pi/2)       ... 0 dan pi/2ye denklem sonucu 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% ... polinom denklem kök bulma işlemleri 
% 
% arrayKokleri=[1 -1 -2];  ... x^2-x-2
% roots(arrayKokleri); 
% 
% 
% syms x
% a=[3 -2 2] ;     ... 3x^2-2x+2
% polyint(a)       ... inetgralini çözdük katsıylar sonuçtur.
% 
% 
% syms x;
% denklem=sin(x)==1 ;    .... denklemin 1 olduğu nokta
% solve(denklem,x)        ... denklem çözülür.
% 
% 
% 
% 
% 
% 
% 
% 
% ... Array işlemlerinde NOKTA işlemleri
%                ... * / ^ işlemlerde kullan. teke tek çarpım 
% x=[1 2 3];
% y=x.^2
% z=x.*3
% 





% ... fonksiyon işlemleri 
% 
%     
% function m = toplama(a,b) ... burayı başka scripte yaz
% 
%     m = a+b;
% end
% 
% sonuc=toplama(2,3)



...svd 
    
A = [1 0 1; -1 -2 0; 0 1 -1]
s = svd(A)

clc; clear;
resmim = imread('team-img1.jpeg');
...imshow(resmim)

I = rgb2gray(resmim);
figure
imshow(I)

I2 = im2double(I);
[u,s,v]=svd(I2);
s2 = s;
s2(20:end, :) = 0; s2(:, 20:end) = 0;
D=u*s2*v';
imshow(D);

s3 = s;
s3(39:end, :) = 0; s3(:, 39:end) = 0;
D=u*s3*v';
imshow(D);










    




  






