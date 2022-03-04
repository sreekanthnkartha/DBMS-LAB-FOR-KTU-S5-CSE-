set serveroutput on
declare 
    cursor stud is select roll, s1, s2 from students;
    good students.s1%type;
begin
    for i in stud loop
        if(i.s1 + i.s2 > 12) then  
            if(i.s1>i.s2) then
                good := i.s1;
            else 
                good := i.s2;
            end if;
            dbms_output.put_line('Roll no : '||i.roll||'   Highest grade : '||good);
        end if;
    end loop;
end;
/