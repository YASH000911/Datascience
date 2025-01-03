CREATE DATABASE ASSIGNMENT1;
USE ASSIGNMENT1;

CREATE TABLE EMP
(
EID CHAR(6),
NAME VARCHAR(16),
ADRESS_CITY VARCHAR(10),
DOB DATE,
PHONE CHAR(10),
EMAIL VARCHAR(25)
)


INSERT INTO EMP
VALUES('E00001','ARJUN','BENGALURU','1.20.2000','9090909088','ULALA@GMAIL.COM');
SELECT * FROM EMP;
INSERT INTO EMP
VALUES('E00002','BRJUN','BENGALURU','1.2.2000','9090909088','ULAAALA@GMAIL.COM');
SELECT * FROM EMP;
INSERT INTO EMP
VALUES('E00003','BRJ','BENGAL','1.2.2090','9090909086','UHHHAAALA@GMAIL.COM');
INSERT INTO EMP
VALUES('E00006','JHSBBB','KOLKATAL','1-2-2090','9090979086','HHHAAALA@GMAIL.COM');
SELECT * FROM EMP; --ASSIGNMENT TABLE 
SELECT * FROM EMPP;--IMPORTED TABLE 

--WORKING WITH IMPORTED TABLE 

--SQL CLAUSE

--  1. WHERE CLAUSE : WORKS AS A FILTER
--EXMP 1
SELECT * FROM EMPP WHERE CITY='DELHI';
 
 --EXMP 2
  SELECT * FROM EMPP 
  WHERE EID=1003;


  SELECT NAME FROM EMPP WHERE CITY='DELHI';

  --LIKE CLAUSE 
-- PERCENT SINGN CLAUSE
SELECT * FROM EMPP
WHERE NAME LIKE '%GUPTA';

SELECT * FROM EMPP
WHERE NAME LIKE 'Y%';

SELECT *FROM EMPP 
WHERE ADDR2 LIKE '%DWARKA%'

--(_) UNDERSCORE , FETCHING FIXED AMOUNT O LETTER/CHARACTERS

SELECT * FROM EMPP
WHERE NAME LIKE '_____';

--Q -FETCH NAME STARTING WITH R AND ONLY 5 CHARACTER INCLUDING R

SELECT * FROM  EMPP
WHERE NAME LIKE 'R____'
--NO RECORDS 
--LETS USE ASSIGNMENT TABLE ADD THE NAME AND TRY TO FETCH 

INSERT INTO EMP(NAME)
VALUES('ROHAN');

SELECT * FROM EMP
WHERE NAME LIKE 'R____'
--SUCESSFUL

--TOP CLAUSE
SELECT TOP 2 NAME FROM EMP;
