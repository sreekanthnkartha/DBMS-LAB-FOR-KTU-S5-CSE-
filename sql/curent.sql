set serveroutput on
accept x char prompt 'Enter the customer number : '
declare 
    cursor cur is select * from curent;
    amount float;
    custno char;
    unit curent.pas%type;
begin
    custno := &x;
    for i in cur loop
        if i.cno = custno then
            unit := i.pas - i.pre;
            if unit > 500 then
                amount := 100 * 5 + 200 * 7.5 + 200 * 15 + (unit-500)*22.5;
            elsif unit > 300 then 
                amount := 100 * 5 + 200 * 7.5 + (unit-300)*15;
            elsif unit > 100 then 
                amount := 100 * 5 + (unit-100)*7.5;
            else
                amount := unit*5;
            end if;
            dbms_output.put_line('Amount : '||amount);
        end if;
    end loop;
end;
/