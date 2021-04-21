program goingTotheCinema;

function Movie (card,ticket,perc:single):integer;
var system1,system2,discount:single;result:integer;
begin
    system2:=card;
    discount:=ticket;
    system1:=0;
    result:=0;
    while system1<system2 do 
    begin
        system1:=system1+ticket;
        discount:=discount*perc;
        system2:=system2+discount;
        result:=result+1;
    end;
    writeln('With card the total price is: ',system2:0:0,
    ' With tickets: ',system1:0:0);
    Movie:=result;
end;

begin
    writeln(Movie(100,10,0.95));    
end.