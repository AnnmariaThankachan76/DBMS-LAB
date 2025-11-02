set serveroutput on;
show serveoutput;
DECLARE
a int;
b int;
c int;
num int;
begin
a:=0;
b:=1;
num:=:num;
num:=num-2;
dbms_output.PUT_LINE('Series is ');
dbms_output.PUT_LINE(a);
dbms_output.PUT_LINE(b);
while(num>0)
LOOP
    c:=a+b;
    a:=b;
    b:=c;
    dbms_output.PUT_LINE(c);
    num:=num-1;
end loop;
end;
