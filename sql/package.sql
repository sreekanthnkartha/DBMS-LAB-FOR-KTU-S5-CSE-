set serveroutput ON
create or replace package pkg as
    procedure ins(num in emplo.eno%type, nam in emplo.ename%type, salary in emplo.esalary%type);
    procedure del(num in emplo.eno%type);
    procedure updat(num in emplo.eno%type, nam in emplo.ename%type, salary in emplo.esalary%type);
    function incr(num in emplo.eno%type, salary in emplo.esalary%type) return number;
end pkg;
/