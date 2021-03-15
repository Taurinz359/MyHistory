program wrtSymbol;
uses crt;
type
	calcResult = record
		scW,scH,lengthColomns,lengthSC:word;
	end;

	iteration = record 
	k,l : word;
	end;
const
	CountColor = 16;
	CountColomns= 8;
var
	calc:calcResult;
	ColorName:array[1..16] of word=(Black,Blue,Green,Cyan,Red,Magenta,Brown,
		Lightgray,DarkGray,LightBlue,LightGreen,LightCyan,LightRed,
		LightMagenta,Yellow,White);
		iter:iteration;
procedure workWithColor (i:integer);
begin
	if (i mod 2) = 0 then
               	TextColor(ColorName[iter.k] or blink)
        else
               	TextColor(ColorName[iter.k]);
	if round (i div iter.k) = calc.lengthSC+1 then
       	begin
                TextColor(ColorName[iter.k]);
                iter.k:= iter.k+1;
       	end;
        if round(i div iter.l) = calc.lengthColomns+1 then
       	begin
               	iter.l:=iter.l+1;
               	TextBackGround(ColorName[iter.l]);
       	end;
end;

procedure WriteSymbol;
var i,j:integer;
begin
	iter.k:=1;
	iter.l:=1;
	for i:=1 to calc.scW do
	begin
		workWithColor(i);
		for j:=1 to calc.scH do
		begin
			GOTOXY(i,j);
			write('^');
		end;
	end;
end;

procedure calculation;
begin
        calc.scW:=ScreenWidth;
        calc.scH:=ScreenHeight;
        calc.lengthColomns:=calc.scW div CountColomns;
        calc.lengthSC:= calc.scW div CountColor;
        WriteSymbol;
end;

begin
	clrscr;
	calculation;
	while not KeyPressed do
	begin
		if KeyPressed then
			clrscr;
	end;
end.
