x=10;
y=20;

z=x+y;
%       display(z);    %z degeri gösterir.

if(z>10 && mod(z,2)==0)                    %if-else-end blogu
    disp('YES')
    fprintf('%d is müko',z);                %fprintf
else
    disp('NO')
end

%     disp(z);



day=1;

switch(day)                                  % switch-case-end
    case 1
        disp('MONDAY')
    case 2
        disp('başka')
end



counter=10;
while(counter>=0)                             %while-end
    disp(counter)
    counter=counter-1;
end


for i=0:0.2:10                               %for-end
fprintf('%d ',i);
end

disp(' ');   %alt satır insin.





a=[10,20,30,40,50,60];                          %diziler
disp(a)
disp(size(a))     %sutun-satir 
[rows,cols]=size(a);
size(a,1)     %indis 1 den baslar

for i=1:1:cols  %dizi yazdirma islemi
fprintf('%d  ',a(i));
end



v1=[1,2,3];        %  .   =>  her eleman için ayrı ayrı
v2= [4,5,6];



x= -3:0.1:3;
y=x.^2;
y2=sin(x);

figure(1)        %sadece figure ekranı


plot(x,y,'red');     %tablo oluşturur
hold on % plot plot üstüne
plot(x,y2,'blue')


xlabel('x alanı');
ylabel('y alanı');
title('y kare tablosu');

grid       %çizgiler gelir arkpalan






