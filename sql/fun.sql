create function dd(x float) return varchar is msg varchar(20);
begin
if(x>100)then
msg:='su';
else
msg:='un';
end if;
return msg;
end;
/