%% Gaussian Elimination

 clear;
 clc;

 A = [1,1,1;
    2,-1,3;
    1,-1,1;];
 B = [6;9;2];

 x = [A,B];



[ROWS , COLS] = size(A);


for row = 1:ROWS-1
    
    x(row,:) = x(row,:)/x(row,row);
    for row2=row+1:ROWS
        x(row2,:) = x(row2,:) - x(row,:) *x(row2,row);
    end
    
end

%backward substitution

z = zeros (1,ROWS);
sol = zeros (ROWS,1);

for row = ROWS:-1:1
    total = 0;
    idx = COLS;
    while(idx > row)
        total = total + x(row , idx) *z(idx);
        idx = idx-1;
    end
    
    if(row == ROWS)
        z(row) = x(row,end)/x(row,end-1);
    else
        z(row) = x(row,end)- total;
    end
end

 disp(A);
 disp(x);
 disp(z);