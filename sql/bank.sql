set serveroutput on
accept x char prompt '1.Debit   2.Credit   3.Check balance : '
declare
    acc_no acc.accno%type; -- variable for inputing the account no to which the operations should be done. 
    balance acc.bal%type; -- variable for storing the current balance of the account. It is fetched from the database.
    choice char; -- variable for inputing the choice of the user. 
    amount int; -- variable for storing amount, which should be debited or credited.
begin
 -- Fetching data from user : 
    choice := &x;
    acc_no := &acc_no;
    amount := &amount;
 -- Fetching the current balance from the database. (according to the account number)
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
