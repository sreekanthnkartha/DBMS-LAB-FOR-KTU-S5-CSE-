set serveroutput on
create or replace package body pkg as

    procedure ins(num in emplo.eno%type, nam in emplo.ename%type, salary in emplo.esalary%type) 
    is
    BEGIN
        insert into emplo values (num, nam, salary);
    end ins;

    procedure del(num in emplo.eno%type) 
    is
    BEGIN
        delete from emplo where eno = num;
    end del;

    procedure updat(num in emplo.eno%type, nam in emplo.ename%type, salary in emplo.esalary%type) 
    is
    BEGIN
        update emplo set ename = nam, esalary = salary where eno = num;
    end updat;

    function incr(num in emplo.eno%type, salary in emplo.esalary%type) 
    return number 
    is 
    sal number := 0;
    BEGIN
        update emplo set esalary = salary where eno = num;
        return sal;
    end incr;
end pkg;
/