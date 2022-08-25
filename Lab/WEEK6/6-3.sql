CREATE OR REPLACE TRIGGER T2
BEFORE UPDATE OR INSERT OR DELETE OF SAL ON EMP
BEGIN
IF TO_CHAR(SYSDATE,'DY')='SUN' OR TO_CHAR(SYSDATE,'DY')='SAT'THEN
RAISE_APPLICATION_ERROR(-20111,'NO CHANGES CAN BE MADE ON SATURDAY AND SUNDAY USER IS  '||USER);
ELSE
DBMS_OUTPUT.PUT_LINE('DML OPERATION DONE BY'||USER);
END IF;
END;
/