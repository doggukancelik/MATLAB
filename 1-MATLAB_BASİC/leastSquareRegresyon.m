clc;
clear all;
close all;
% matris şeklinde girilir, her satır a (x, y) olur.
input = [...
  1, 2;...
  2, 4.5;...
  3, 5.9;...
  4, 8.1;...
  5, 9.8;...
  6, 12.3];

m = size(input, 1);
n = size(input, 2);
x = input(:,1:n-1);
y = input(:,n);

% X matrisinin ilk sütunu birlerle doldurulur,
% ve geri kalan sütunlar, girdinin x sütunlarıdır.
X = ones(m, n);
X(:,2:n) = input(:,1:n-1);

% Xa - y karesel hatasını en aza indiren a'yı bulmaya çalışın.
%C(X) üzerindeki y projesi bize Xa olan b'yi verecektir.

% İlişki X'Xa = X'b'dir

% Eşdeğer olan denklemi çözmek için sol bölme \ kullanın
% - a = ters(X'*X)*X'*y, ancak hesaplama açısından daha ucuz.
a = (X' * X) \ (X' * y)
b = X*a
least_square_error = sum((b - y) .^ 2)

% Plot the best fit line.
plot(x, b);
title(sprintf('y = %f + %fx', a(1), a(2)));
xlabel('x');
ylabel('y');

hold on;
% Plot the input data.
plot(x, y, '+r');
hold off;
grid on;
pause;