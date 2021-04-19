program CountTheDigit;

function ndDig (var n,d:longint):integer;
var count,LastNum,tmp,i,k:longint;
begin
    k:=0;
    count:=0;
    for i := 0 to n do
    begin
        k:=i*i;
        tmp:=k;
        repeat
            LastNum:=tmp mod 10;
            if LastNum = d then
            begin
                {writeln('Using the digit ', d, ' in: ', k);}
                count:=count+1;
            end;
            tmp:=tmp div 10;
        until tmp = 0;
    end;
    writeln('Total count is then: ',count);
    ndDig:=count;
end;

procedure CheckNum (var n,d:longint);
begin
    if  n < 0 then
    begin
        writeln('n >= 0');
        halt(1);
    end;
    if(d < 0) or (9 < d) then 
    begin
        writeln('(0 <= d <= 9)');
        halt(1);
    end;
end;

var n,d:longint;
begin
    n:=11011;d:=2;
    CheckNum(n,d);
    ndDig(n,d);
end.