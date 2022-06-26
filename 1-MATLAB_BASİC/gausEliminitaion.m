clear;
clc;

A=[1,1,1;
    2,-1,3;
    1,-1,1;];
b=[6;9;2;];

C=[A,b];

[ROWS,COLS]=size(A);
%FORWARD ELİMİNATİONS LOOP
for row=1:ROWS-1

    C(row,:)=C(row,:)/C(row,row);

    for row2=row+1:ROWS
        C(row2,:)= C(row2,:)-C(row,:) * C(row2,row);
    end
end

%backward substitution
x=zeros(1,ROWS);
sol=zeros(ROWS, 1);
for row=ROWS:-1:1
    total=0;
    idx=COLS;
    while(idx>row)
        total=total+C(row,idx)*x(idx);
        idx=idx-1;
    end
    if(row==ROWS)
        x(row)=C(row,end)/C(row,end-1);
    else
        x(row)=C(row,end)-total;
    end
    
end
x'
C


