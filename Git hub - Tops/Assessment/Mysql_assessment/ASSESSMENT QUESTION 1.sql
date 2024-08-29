-- CREATING DATABASE --
CREATE DATABASE ASSESSMENT;

-- USING DATABASE--
USE ASSESSMENT;

-- CREATING TABLE WITH FIRST ROW --
CREATE TABLE ASSESSMENT1 
(WORKER_ID INT, FIRST_NAME VARCHAR(20), LAST_NAME VARCHAR(20), SALARY INT, JOINING_DATE DATETIME, DEPARTMENT VARCHAR(20)) ;

-- INSERTING VALUES -- 
INSERT INTO ASSESSMENT1 (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) 
VALUES (1, "Monika", "Arora", 100000, STR_TO_DATE('2/20/2014 09:00:00', '%m/%d/%Y %H:%i:%s'), "HR");
INSERT INTO ASSESSMENT1 (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) 
VALUES (2, "Niharika", "Verma", 80000, STR_TO_DATE('6/11/2014 09:00:00', '%m/%d/%Y %H:%i:%s'), "Admin");
INSERT INTO ASSESSMENT1 (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) 
VALUES (3, "Vishal", "Singhal", 300000, STR_TO_DATE('2/20/2014 09:00:00', '%m/%d/%Y %H:%i:%s'), "HR");

-- CHECKING THE TABLE -- 
SELECT * FROM ASSESSMENT1;

-- DELETING BECUASE KEPT THE WORKER_ID SAME --
DELETE FROM ASSESSMENT1 WHERE SALARY = 80000 LIMIT 1;
DELETE FROM ASSESSMENT1 WHERE SALARY = 300000 LIMIT 1;

-- INSERTING VALUES -- 
INSERT INTO ASSESSMENT1 values (4, "Amitabh","Singh",500000, STR_TO_DATE('2/20/2014 09:00:00', '%m/%d/%Y %H:%i:%s'), "Admin");
INSERT INTO ASSESSMENT1 VALUES (5, "Vivek", "Bhati", 500000, STR_TO_DATE('6/11/2014 09:00:00', '%m/%d/%Y %H:%i:%s'), "Admin");
INSERT INTO ASSESSMENT1 VALUES (6, "Vipul", "Diwan", 200000, STR_TO_DATE('2/20/2014 09:00:00', '%m/%d/%Y %H:%i:%s'), "Account");
INSERT INTO ASSESSMENT1 VALUES (7, "Satish", "Kumar", 75000, STR_TO_DATE('1/20/2014 09:00:00', '%m/%d/%Y %H:%i:%s'), "Account");
Insert INTO ASSESSMENT1 VALUES (8, "Geetika", "Chauhan", 90000, STR_TO_DATE('4/11/2014 09:00:00', '%m/%d/%Y %H:%i:%s'), "Admin");

-- READING THE TABLE --
SELECT * FROM ASSESSMENT1;

-- IMPLEMENTING QUERY -- 
-- 1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.-- 
SELECT * FROM ASSESSMENT1 ORDER BY FIRST_NAME ASC, DEPARTMENT DESC; 

-- 2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table. -- 
SELECT * FROM ASSESSMENT1 WHERE DEPARTMENT = "ACCOUNT";

-- 3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets. -- 
SELECT * FROM ASSESSMENT1 WHERE FIRST_NAME LIKE "_____H";

 -- 4. Write an SQL query to print details of the Workers whose SALARY lies between 1.--
 SELECT * FROM ASSESSMENT1 WHERE SALARY BETWEEN 100000 AND 200000;

-- 5. Write an SQL query to fetch duplicate records having matching data in some fields of a table. --
SELECT DEPARTMENT, COUNT(DEPARTMENT) AS COUNT FROM ASSESSMENT1 GROUP BY DEPARTMENT HAVING COUNT(DEPARTMENT) >1;

-- 6. Write an SQL query to show the top 6 records of a table. --
SELECT * FROM ASSESSMENT1 LIMIT 6;

-- 7. Write an SQL query to fetch the departments that have less than five people in them.--
SELECT DEPARTMENT, COUNT(WORKER_ID) AS 'NUMBER OF WORKERS'FROM ASSESSMENT1 GROUP BY DEPARTMENT HAVING COUNT(WORKER_ID)<5;

-- 8. Write an SQL query to show all departments along with the number of people in there. --
SELECT DEPARTMENT , COUNT(FIRST_NAME) FROM ASSESSMENT1 GROUP BY DEPARTMENT ;

-- 9. Write an SQL query to print the name of employees having the highest salary in each department. --
SELECT FIRST_NAME, LAST_NAME, SALARY, DEPARTMENT FROM ASSESSMENT1 e
WHERE SALARY = ( SELECT MAX(SALARY) FROM ASSESSMENT1 WHERE DEPARTMENT = e.DEPARTMENT);