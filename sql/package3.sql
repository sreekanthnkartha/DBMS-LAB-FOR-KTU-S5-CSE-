set serveroutput on
declare 
    sala emplo.esalary%type;
    empno emplo.eno%type;
BEGIN
    empno := &empno;
    pkg.ins(1, 'a', 123);
    pkg.ins(2, 'b', 321);
    pkg.ins(3, 'c', 456);
    pkg.ins(4, 'd', 654);
    pkg.del(3);
    pkg.updat(1, 'r', 987);
    sala := pkg.incr(2, 982);
    dbms_output.put_line(sala);
end;
/