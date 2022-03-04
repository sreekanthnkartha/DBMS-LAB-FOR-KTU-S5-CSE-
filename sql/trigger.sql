set serveroutput on
create or replace trigger rte 
before 
insert or update of roll, mark or delete
on student
for each row
begin
    case 
        when inserting then
            dbms_output.put_line('Inserting : '||:new.roll);
        when deleting then
            dbms_output.put_line('Deleting : '||:old.roll);
        when updating('rollno') then
            dbms_output.put_line('Updating from '||:old.roll||' to '||:new.roll);
        when updating('mark') then
            dbms_output.put_line('Updating from '||:old.mark||' to '||:new.mark);
    end case;
end;
/