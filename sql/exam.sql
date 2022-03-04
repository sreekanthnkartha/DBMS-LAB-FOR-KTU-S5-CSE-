set serveroutput on
create sequence seq;
create or replace trigger t1 
before
insert on
registration
for each row
declare
    counter int;
begin
    select seq.nextval into :new.reg_id from dual;
    select count(*) into counter from registration where specialization = :new.specialization;
    if counter > 4 then
        dbms_output.put_line('ERROR');
    else
        insert into patient values(:new.pname, :new.specialization);
    end if;
end;
/