program TargetDate;
uses sysutils;
const
    dayofYearth = 360;

function dateNbDays(a0,a,p:real):string;
var i:integer;day,result:real;
    date: TdateTime;
begin
    if (a0<=0) or (p <= 0) or (a <= a0) then
    begin
        dateNbDays:='Error inccorect data!';
        exit;
    end;
    date:=StrToDate('01-01-2016');
    result:=a0;
    i:=0;
    while result <= a do 
    begin
        i:=i+1;
        day:=((p/100)/dayofYearth)*result;
        result:=result+day;
    end;
    date:=date+i;
    dateNbDays:=DateToStr(date);
end;


begin
   writeln(dateNbDays(100,150,0));
end.