set serveroutput on
create sequence se;
create or replace trigger asdf
before
insert 
on train
for each row
begin
    select se.nextval into :new.tno from dual;
end;
/