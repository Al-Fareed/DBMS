CREATE TABLE PROJ(
DNO VARCHAR2(3) constraint DNO_FK_DEPT_Cons NOT NULL REFERENCES DEPT(DNO),
PRJ_NO VARCHAR2(5) constraint P_LikePRJNO_Cons CHECK(PRJ_NO LIKE 'P%') NOT NULL,
PRJ_NAME VARCHAR2(10),
PRJ_CREDIT NUMBER(2) constraint PRJ_CREDIT_RANGE_Cons CHECK(PRJ_CREDIT BETWEEN 1 AND 10),
STRT_DATE DATE,
END_DATE DATE, constraint ENDDATE_GRT_STRT_Cons CHECK(END_DATE>STRT_DATE));
