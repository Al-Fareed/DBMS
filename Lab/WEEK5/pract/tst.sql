set serveroutput on
declare
no emp.empno%type;
num emp%rowtype;
begin
no:=&no;
select * into num from emp where empno=no;
dbms_output.put_line('Output:');
dbms_output.put_line(num.empno||' '||num.ename||' '||num.job);
end;
/