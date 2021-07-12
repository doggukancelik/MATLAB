clear;
clc;
close all;
x=[0 1 2 3 4 5 6];
y=[0 .8415 .9093 .1411 -.7568 -.9589 -.2794];

% Interpolates a value using Lagrange polynomial
% Inputs:
%         x: Array containing x values
%         y: Array containing y values
    x_int= 10;
% Outputs:
%     y_int: Interpolated value
    tv=-1;
    n = size(x, 2);

    y_int = 0;
    for i = 1:n
        p = y(i);
        for j = 1:n
            if i ~= j
                p = p * ((x_int - x(j)) / (x(i) - x(j)));
            end
        end
        y_int = y_int + p;
    end
    disp(y_int)
    error= abs((tv-y_int)/tv)*100