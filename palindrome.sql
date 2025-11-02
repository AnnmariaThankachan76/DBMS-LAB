SET SERVEROUTPUT ON;

DECLARE
    num NUMBER;     -- original number
    temp NUMBER;           -- copy of num
    rev NUMBER := 0;       -- to store reversed number
    rem NUMBER;            -- remainder
BEGIN
    num:=:num;
    temp := num;            -- save original value

    WHILE temp > 0 LOOP
        rem := MOD(temp, 10);             -- get last digit
        rev := (rev * 10) + rem;          -- build reversed number
        temp :=trunc(temp / 10);         -- remove last digit
    END LOOP;

    IF rev = num THEN
        dbms_output.put_line(num || ' is a Palindrome number.');
    ELSE
        dbms_output.put_line(num || ' is NOT a Palindrome number.');
    END IF;
END;
/
