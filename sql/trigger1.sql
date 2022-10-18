create or replace trigger tg1 before insert on aa for each row
declare
co int;
erro exception;
begin
select count(*) into co from aa where balance=:new.balance;
if(co>=1)then
--raise erro;
RAISE_APPLICATION_ERROR(-20500,'YOU CANT DO THIS OPERATION                             
NOW');         
end if;

end;
/