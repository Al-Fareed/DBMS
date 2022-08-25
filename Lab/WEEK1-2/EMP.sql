CREATE TABLE EMP(
EMPNO NUMBER(4) PRIMARY KEY,
ENAME VARCHAR2(10),
JOB VARCHAR2(9) constraint JOB_CHK_Cons CHECK(JOB IN ('CLRK','MGR','AMGR','GM','CEO')),
MGRID NUMBER(4) constraint MGR_FK_EMPNO_Cons REFERENCES EMP,
DATE_BIRTH DATE,
SAL NUMBER(7,2) constraint SAL_20KMore_Cons CHECK(SAL>20000),
COMM NUMBER(7,2) DEFAULT '1000',
DEPTNO VARCHAR2(3) constraint DEPTNO_FK_DEPT_Cons REFERENCES DEPT(DNO) ON DELETE CASCADE,
DATE_JOIN DATE, constraint DB_Less_DBJOIN_Cons CHECK(DATE_BIRTH<DATE_JOIN));
 