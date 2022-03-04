set serveroutput on
declare
    marks float;
    dat varchar(20);
    da varchar(20);
begin
    select avg(mark) into marks from student;
    dbms_output.put_line('Average marks : '||marks);
    if(marks<40) then
        dbms_output.put_line('Need improvement');
    end if;
    select to_char(current_date, 'DD/MM/YYYY'), to_char(current_date, 'Day') into dat, da from dual;
    dbms_output.put_line('Date : '||dat);
    dbms_output.put_line('Day : '||da);
end;
/