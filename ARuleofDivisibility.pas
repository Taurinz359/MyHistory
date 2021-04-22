program ARuleofDivisibility;
type
    returnResult = array [1..2] of integer;

function seven(m:longint):returnResult;
var
    myArray:returnResult;
    remainder:longint;i,result:integer;
begin
    if (m < 0) then
        halt(1);
    i:=0;
    while true do
    begin
        if (m < 99) then 
        begin
            result:=m;
            break;
        end;
        i:=i+1;
        remainder:=m mod 10;
        m:=m div 10;
        m:=m - (remainder * 2);
    end; 
    myArray[1]:=result;
    myArray[2]:=i;
    seven:=myArray;
end;

begin
    seven(477557102);
end.