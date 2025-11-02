SET SERVEROUTPUT ON;
SHOW SERVEROUTPUT;
declare
numa int;
numb int;
numc int;
BEGIN
numa:=:numa;
numb:=:numb;
numc:=:numc;
if(numa>numb and numa>numc)
then 
 dbms_output.put_line('greatest is '||numa);
elsif(numb>numa and numb>numc)
then
   dbms_output.put_line('greatest is '||numb);
else
  dbms_output.put_line('greatest is '||numc); 
end if;
end;
