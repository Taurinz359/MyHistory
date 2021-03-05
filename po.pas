program Find;
function Po (find,xWord:string):integer;
var i,j,k: integer;index:integer=0;fword:string;
begin

	for i:=1 to length(xword) do
	begin
		j:=1;
		if xword[i] = find [j] then
		begin
			index:=i;
			k:=i;
			while j <= length(find) do
			begin
				if not (xword[k] = find[j]) then
				begin
					index:=0;
					break;
				end;
				k:=k+1;
				j:=j+1;
			end;
		end;
	end;
	Po:= index;
end;

begin
	writeln(Po('b', 'abrakadabra'))
end.
