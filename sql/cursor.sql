set serveroutput on
declare
    cursor abc is select mark from student;
    counter int := 1;
    mar int;
begin
    for i in abc loop
        dbms_output.put_line('Student('||counter||') : '||i.mark);
    end loop;
end;
/