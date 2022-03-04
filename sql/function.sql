set serveroutput on
create or replace function dc(x in int) 
return varchar
is
y varchar(20) := 'Hello';
BEGIN
    if x > 3000 then
        y := 'Platinum';
    elsif x > 1000 THEN
        y := 'Gold';
    else 
        y := 'Silver';
    end if;
    return y;
end;
/