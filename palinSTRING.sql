SET SERVEROUTPUT ON;

DECLARE
    str VARCHAR2(50) := 'MADAM';
    rev VARCHAR2(50) := '';
    len NUMBER;
BEGIN
    len := LENGTH(str);

    FOR i IN REVERSE 1..len LOOP
        rev := rev || SUBSTR(str, i, 1);   -- build reverse string
    END LOOP;

    IF UPPER(rev) = UPPER(str) THEN
        dbms_output.put_line(str || ' is a Palindrome string.');
    ELSE
        dbms_output.put_line(str || ' is NOT a Palindrome string.');
    END IF;
END;
/
