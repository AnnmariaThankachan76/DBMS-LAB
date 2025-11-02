set serveroutput on;
show serveroutput;
declare 
numa int;
ia int;
BEGIN
    numa:=:numa;
dbms_output.put_line('MUltiplication tale is :');
for ia in 1..numa 
loop
    dbms_output.put_line(numa||' * '|| ia ||' = '||numa*ia);
end loop;
end;
