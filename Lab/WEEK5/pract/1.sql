set serveroutput on
declare
pi constant number:=3.14;
radius number :=2;
area number;
begin
area:=pi*power(radius,2);
dbms_output.put_line('Area is:'||area);
end;
/