-- ASSIGNMENT 4   USE OF SQL CLAUSE - WHERE ,HAVING,GROUP BY  , ORDER BY AND AGGRIGATE .....ETC

	--Q1  CITY WISE COUNT OF EMPLOYEES ARRANGED IN DESC ORDER 

	CREATE DATABASE ASSIGNMENT4;
	USE ASSIGNMENT4
	 SELECT * FROM EMP
  
	  SELECT CITY , COUNT(EID) AS 'CITY WISE TOTAL EMP' FROM EMP
	  GROUP BY CITY
	  ORDER BY COUNT(EID) DESC;

  --Q2 DETAILS OF THE EMPLOYEES WHO DOES NOT HAVE AN ACCOUNT ON YAHOO DOAMIN
   SELECT * FROM EMP

   SELECT * FROM EMP     --SOLUTION 1
   WHERE EMAIL NOT LIKE '%YAHOO%'
   ]
   SELECT COUNT(EID) FROM EMP      --SOLUTION 2
   WHERE EMAIL NOT LIKE '%YAHOO%'