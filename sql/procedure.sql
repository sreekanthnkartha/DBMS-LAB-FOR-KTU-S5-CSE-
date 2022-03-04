set serveroutput ON
create or replace procedure findmax(x number, y number, z out number) as
BEGIN
    if x > y THEN
        z := x;
    else
        z := y;
    end if;
end;
/