set serveroutput on
accept x char prompt '1.d 2.c 3.b enter'
declare
bal int;
acccno int;
amt int;
x char;
begin
x:=&x;
acccno:=&acccno;
amt:=&amt;
select balance into bal from aa where accno=acccno;
if(x='1') then
    if((bal-amt)>=0)then
        dbms_output.put_line('suc');
        update aa set balance=balance-amt where accno=acccno;
    else 
        dbms_output.put_line('unsuc');
    end if;
elsif(x='2')then
    dbms_output.put_line('suc');
    update aa set balance=balance+amt where accno=acccno;
else
    dbms_output.put_line(bal||' '||acccno);
end if;
end;
/