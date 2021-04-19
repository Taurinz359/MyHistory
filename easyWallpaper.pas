program easyWalpaper;
type
    walpCalc=record
        l,w:double;
    end;

function walpaper(l,w,h:double):string;
var
    walp:walpCalc;roomS:double;indexinArr:integer;
    ArrResult : array [1..20] of string = ('one','two','three',
    'four','five','six','seven','eight','nine','ten','eleven'
    ,'twelve','thriteen','fourteen','fifteen','sixteen','seventeen'
    ,'eighteen','nineteen','twenty');

begin
    if (l < 0 ) or (w < 0) or (h< 0) then
    begin
        walpaper:='zero';
        exit;
    end;
    walp.w:=0.52;
    walp.l:=10;
    roomS:=((l+w)*2)/walp.w*h/walp.l;
    roomS:=roomS * (15/100)+roomS;
    indexinArr:=round(roomS);
    walpaper:=ArrResult[indexinArr];
end;
begin
    writeln(walpaper(4.0,3.5,3.0));
end.