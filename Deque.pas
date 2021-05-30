program realizationDeque;

type 
    LongItem2Ptr =^longitem2;
    longitem2  = record
        data:longint;
        prev,next:LongItem2Ptr;
    end;
type 
    LongDeque  = record 
        first,last:LongItem2Ptr;
        end;

procedure LDeqInit(var deque: LongDeque);
begin
    deque.first:=nil;
    deque.last:=nil;
end;

procedure LnDeqPushFront(var deque: LongDeque; n:longint);
begin
    if deque.last = nil then
    begin
        new(deque.last);
        if deque.first = nil then
        begin
            deque.last^.prev:=nil;
            deque.first:=deque.last;
        end;
    end
    else
    begin
        new(deque.last^.next);
        deque.last^.next^.prev:=deque.last;
        deque.last:=deque.last^.next;
    end;
    deque.last^.data:=n;
    deque.last^.next:=nil;
end;

procedure LnDeqPushBack(var deque: LongDeque; n:longint);
begin
    if deque.first = nil then 
    begin
        new(deque.first);
        if deque.last = nil then
        begin
            deque.first^.next:=nil;
            deque.last:=deque.first;
        end;
    end
    else
    begin
        new(deque.first^.prev);
        deque.first^.prev^.next:=deque.first;
        deque.first:=deque.first^.prev;
    end;
    deque.first^.data:=n;
    deque.first^.prev:=nil;
end;

procedure LnDeqPopFront(var deque:LongDeque;var n: longint);
var tmp:LongItem2Ptr; 
begin
    tmp:=deque.last;
    n:=deque.last^.data;
    deque.last:=deque.last^.prev;
    if deque.last <> nil then
        deque.last^.next:=nil;
    dispose(tmp);
end;

procedure LnDeqPopBack(var deque:LongDeque; var n:longint) ;
var tmp:LongItem2Ptr;
begin
    tmp:=deque.first;
    n:=deque.first^.data;
    deque.first:=deque.first^.next;
    if deque.first <> nil then
        deque.first^.prev:=nil;
    dispose(tmp);
end;

function lnDeqIsEmpt(var deque:LongDeque):boolean;
begin
    lnDeqIsEmpt:= (deque.first <> nil) and (deque.last <> nil);
end;

var 
    deque:LongDeque; n:longint;
begin
    LDeqInit(deque);
    for n:=1 to 15 do
    begin
        LnDeqPushFront(deque,n);
    end;
    for n:=15 to 30 do
    begin
        LnDeqPushBack(deque,n);
    end;

    while lnDeqIsEmpt(deque) do 
    begin
        LnDeqPopFront(deque,n);
        writeln(n);
    end;
end.