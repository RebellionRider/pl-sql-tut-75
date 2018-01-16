SET SERVEROUTPUT ON;
DECLARE
    CURSOR exp_cur IS
    SELECT first_name FROM employees;
    
    TYPE nt_fName   IS TABLE OF VARCHAR2(20);
    fname   nt_fName;
BEGIN
    OPEN exp_cur;
    FETCH exp_cur BULK COLLECT INTO fname LIMIT 10;
    CLOSE exp_cur;
    FOR idx IN 1..fname.COUNT
    LOOP
        DBMS_OUTPUT.PUT_LINE(idx||' '||fname(idx) );
    END LOOP;
END;
/
    
    
    
    
    