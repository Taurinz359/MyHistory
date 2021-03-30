program Point;
type
	linklist=^dataNum;
	dataNum=record
		data:integer;
		next:linklist;
	end;
var n,i:integer;first,tmp,buffer:linklist;
begin
	i:=0;
	new(first);
	first:=nil;
	while not  Seekeof do 
	begin
		read(n);
		new(tmp);
		tmp^.data:=n;
		tmp^.next:=first;
		first:=tmp;
	end;
	tmp:=first; 
	new (buffer);new(first);
	first:=nil;
	while tmp <> nil do 
	begin
		buffer:=first;
		new(first);
		first^.data:=tmp^.data;
		first^.next:=buffer;
		buffer:=tmp^.next;
		dispose(tmp);
		tmp:=buffer;
	end;
	dispose(buffer);
	while first <> nil do 
	begin
		writeln(first^.data);
		first:=first^.next;
	end;
	
end.
