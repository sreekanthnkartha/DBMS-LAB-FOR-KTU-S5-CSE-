set serveroutput on
declare
    a number;
    b number;
    c number;
BEGIN
    a := 10;
    b := 5;
    findmax(a, b, c);
    dbms_output.put_line(c);
end;
/