--date function
 select getdate()

 select dateadd(d,10,getdate()) as 'nxt'
 select dateadd(d,-10,getdate()) as 'prev'

 select dateadd(m,2,getdate())

 select dateadd(yy,10,getdate())

 -- datediff for difference between two dates
   
   select datediff(yy,'12/10/2020',getdate())
    select datediff(m,'1/10/2020',getdate())

	--Q TENURE OF EMPOLOYEES

	--SOL
	USE ASSIGNMENT_3;

	SELECT *FROM EMP
	 SELECT DOJ, DATEDIFF(YY,DOJ,GETDATE()) AS 'TENURE' FROM EMP

	  

--DAY() MONTH(),YEAR()

SELECT DAY(GETDATE())
SELECT MONTH(GETDATE())  ---- IN CASE WE NEED THE MONTH NAME WE CAN USE 
SELECT DATENAME(MONTH,GETDATE())
SELECT YEAR(GETDATE())

-- DATEPART  WORKS SAME AS DATE,MONTH,YEAR FUNCTION 

SELECT DATEPART(M,GETDATE())

-- FORMAT 
SELECT FORMAT(GETDATE(),'M')  --OUTPUT : January 1

SELECT FORMAT(GETDATE(),'Y')


---- uSER DEFINED FUNCTIONS 
  ---1, SCALAR FUNCTION
CREATE FUNCTION FUN01(@A AS INT,@B AS INT)
RETURNs int
AS
BEGIN
DECLARE @C AS INT;
SET @C=@A+@B
RETURN @c
END;

select DBO.FUN01(99,4)


-- 2,TABLE VALUED FUNCTION

CREATE FUNCTION FUN02(@E AS VARCHAR(20))
RETURNS TABLE
AS
RETURN(
SELECT * FROM EMP 
WHERE CITY=@E )
 
 select * FROM DBO.FUN02('DELHI');
  select * FROM DBO.FUN02('MUMBAI');










