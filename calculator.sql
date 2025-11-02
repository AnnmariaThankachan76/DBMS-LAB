
SET SERVEROUTPUT ON;
SHOW SERVEROUTPUT;
declare
numa int;
numb int;
op1 int;
sumof int;
subof int;
mul int;
divof int;
BEGIN
numa:=:numa;
numb:=:numb;
op1:=:op1;
sumof:= numa+numb;
subof:= numa-numb;
mul:= numa*numb;
divof:= numa/numb;

case op1
when 1
 then dbms_output.put_line('SUM IS '|| sumof);
when 2
 then dbms_output.put_line('difference IS '|| subof);
when 3
 then dbms_output.put_line('product IS '|| mul);
when 4
 then dbms_output.put_line('quotient IS '|| divof);
else
  dbms_output.put_line('invalid');
end case;
end;





