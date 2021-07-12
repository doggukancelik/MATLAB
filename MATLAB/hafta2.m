clc;
clear;
close all;

x=-3:0.1:3;       %x değerleri aldık
f=@(x)exp(x);     %isimisiz fonskiyonu f'e atadık
y=f(x);           %y f ataması

figure       %figure oluşturma
plot(x,y,'red--','LineWidth',2);    
xlabel('X EKSENİ');
ylabel('Y EKSENİ');


y_predict= zeros(size(y));  % değerleri sıfırlar



N=5;
for n=0:N
y_predict=y_predict+(x.^n)./factorial(n);
end


hold on 
plot(x,y_predict,'blue');
error = abs((y-y_predict)./y);      %iki fonsliyon arasındaki fark
msg= sprintf('SUM ERROR = %f', sum(error));

title(msg);



legend('TRUE VALUE','ESTİMATED VALUE')

grid





















