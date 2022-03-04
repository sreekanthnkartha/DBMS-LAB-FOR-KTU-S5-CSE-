set serveroutput on
create or replace trigger abcd
after 
insert
on student1
for each row
begin
    case
        when inserting then
            update student1 set avge = s1+s2;
    end case;
end;
/