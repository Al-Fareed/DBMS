Create table DEPT(
DNO VARCHAR2(3) constraint DNO_UNQ_CONS UNIQUE CHECK(DNO LIKE 'D%'),
DNAME VARCHAR2(10)constraint DNAME_UNQ_CONS UNIQUE,
LOCATION VARCHAR2(9) constraint VALID_LOC_Cons CHECK(LOCATION IN ('BNG','MNG','MUB','HYB','CHN')));