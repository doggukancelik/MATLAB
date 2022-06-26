% LU Decomposition

clear;
clc;
close all;

y = [3 , 4, 3 ; 7, 8 ,10 ; 6, 2 ,4;];

L = zeros(length(y));
U = zeros(length(y));

for j=1:length(y)
    
    for i=1:length(y)
        sum = 0;
        p = j-1;
        
        for k=1:p
            sum = sum+ (L(i,k) * U(k,j));
        end
        if(i == j)
            U(i,j) = 1;
        end
        if i>=j
            L(i,j) = y(i,j) - sum;
        else
            U(i,j) = (1/L(i,i)) * (y(i,j)-sum);
        end
        
       
    end
    
    
end

y
L
U
L*U