program PalindromeChainLength;
uses sysutils;

function PChain(n:qword):integer;
var i,j,num:qword;
begin
    i:=0;
    while n < 18446744073709551615 do 
    begin
        j:=n;num:=0;
        while 0 < j do 
        begin
            num:=num*10;
            num:=num + (j mod 10);
            j:= j div 10;
        end; 
        if n  =  num then
            break;
        n:=n+num;
        i:=i+1;
    end;
    PChain:=i;
end;

var i:integer;
begin
    for i:=100 downto 1 do
    begin
        writeln(PChain(i));
    end;
end.