program Point2;
type
	linklist=^dataNum;
	dataNum = record
		data:integer;
		next:linklist;
	end;

procedure getList (var Simply:linklist);
begin
	while simply <> nil do 
	begin
		writeln(Simply^.data);
		Simply:=Simply^.next;
	end;
end;

var
	n:integer;SimplY,last,tmp,first:linklist;
begin
	new(Simply);new(last);
	first:=Simply;
	while not SeekEof do
	begin
		read(n);
		Simply^.data:=n;
		new(tmp);
		Simply^.next:=tmp;
		last:=Simply;
		Simply:=tmp;
	end;
	last^.next:=nil;
	writeln;
	for n:=1 to 2 do
	begin
		Simply:=first;
		getList(Simply);
		writeln;
	end;
end.
