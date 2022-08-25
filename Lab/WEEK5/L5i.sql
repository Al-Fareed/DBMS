SET SERVEROUTPUT ON
DECLARE
	ENO EMP.EMPNO%TYPE;
	NAME EMP.ENAME%TYPE;
	DEP DEPT.DNAME%TYPE;
	SALARY EMP.SAL%TYPE;
BEGIN
	ENO:=&ENO;
	SELECT ENAME,DNAME,SAL INTO NAME,DEP,SALARY
	FROM EMP E JOIN DEPT D ON E.DEPTNO=D.DNO
	WHERE EMPNO=ENO; 
	DBMS_OUTPUT.PUT_LINE(NAME||' WORKS IN '||DEP||' DEPARTMENT AND DRAWS '||SALARY||' SALARY');
END;
/
