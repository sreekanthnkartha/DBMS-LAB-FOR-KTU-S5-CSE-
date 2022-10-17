set serveroutput on
accept x char prompt '1.Debit   2.Credit   3.Check balance : '
declare
    acc_no acc.accno%type;
    balance acc.bal%type;
    choice char;
    choice2 char;
    choice3 char;
    amount int;
begin
    choice := &x;
    acc_no := &acc_no;
    amount := &amount;
    select bal into balance from acc where accno = acc_no;
    case
        when choice = '1' then
            balance := balance-amount;
            update acc set bal = balance where accno = acc_no;
            dbms_output.put_line('Balance : '||balance);
        when choice = '2' then
            balance := balance+amount;
            update acc set bal = balance where accno = acc_no;
            dbms_output.put_line('Balance : '||balance);
        when choice = '3' then
            dbms_output.put_line('Balance : '||balance);
    end case;
end;
/
