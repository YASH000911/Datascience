USE DB1;
CREATE TABLE STU
(RNO INT,
NAME CHAR(7),
AGE INT);
INSERT INTO STU
VALUES(10,'RKO',5);
INSERT INTO STU(RNO,NAME,AGE)
VALUES(19,'HAHAH',99);

INSERT INTO STU(NAME)
VALUES ('OAOAO');

INSERT INTO STU(AGE,RNO,NAME)
VALUES(98,1922,'TONU');

SELECT NAME,RNO, AGE FROM STU;
SELECT NAME FROM STU;

SELECT * FROM STU;