CREATE DATABASE ASSIGNMENT;
USE ASSIGNMENT;

-- Creating Company table --
CREATE TABLE COMPANY (
CompanyID Int primary key,
CompanyName Varchar(45),
Street Varchar(45),
City Varchar(45),
State Varchar(2),
Zip Varchar(10));

-- 1) Statement to create the Contact table  --
CREATE TABLE CONTACT (
ContactID INT PRIMARY KEY,
CompanyID int,
FirstName Varchar(45),
LastName Varchar(45),
Street Varchar(45),
City Varchar(45),
State Varchar(2),
Zip Varchar(10),
IsMain Boolean,
Email Varchar(45),
Phone Varchar(12) );
 
-- 2) Statement to create the Employee table  -- 
CREATE TABLE EMPLOYEE (
EmployeeID INT PRIMARY KEY,
FirstName Varchar(45),
LastName Varchar(45),
Salary Decimal(10,2),
HireDate Date,
JobTitle Varchar(25),
Email Varchar(45),
Phone Varchar(12)
);
 
/*3) Statement to create the ContactEmployee table  
HINT: Use DATE as the datatype for ContactDate. It allows you to store the 
date in this format: YYYY-MM-DD (i.e., ‘2014-03-12’ for March 12, 2014).  */
CREATE TABLE CONTACTEMPLOYEE (
ContactEmployeeID INT primary key,
ContactID INT,
EmployeID INT,
ContactDate Date,
Description Varchar(100)
);
 
-- 4) In the Employee table, the statement that changes Lesley Bland’s phone number to 215-555-8800 -- 
UPDATE  employee set Phone = '215-555-8800' where EmployeeID = 2 ;

-- 5) In the Company table, the statement that changes the name of “Urban Outfitters, Inc.” to “Urban Outfitters” .
UPDATE COMPANY SET CompanyName = "Urban Outfitters" WHERE CompanyID = 1;

/*6)  In ContactEmployee table, the statement that removes Dianne Connor’s contact  event with Jack Lee (one statement). 
HINT: Use the primary key of the ContactEmployee table to specify the correct record to remove. */
DELETE FROM ContactEmployee
WHERE EmployeeID = (SELECT EmployeeID FROM Employee WHERE FirstName = 'Dianne' and LastName =  'Connor')
  AND ContactEmployeeID = (SELECT EmployeeID FROM Employee WHERE FirstName = 'Jack' and LastName =  'Lee');

/*7) Write the SQL SELECT query that displays the names of the employees that 
have contacted Toll Brothers (one statement). Run the SQL SELECT query in  MySQL Workbench. Copy the results below as well. */
SELECT FirstName, LastName FROM assignment.contact WHERE CompanyID = 3;

-- 8) What is the significance of “%” and “_” operators in the LIKE statement?  --
These are two wildcard characters used with the LIKE operator.
 % - Represents zero, one, or multiple characters. It can be used to find strings that match a certain pattern at any position.
 _ - Represents a single character. It is used to find strings that match a pattern with a specific character at a specific position.
 
-- 9) Explain normalization in the context of databases. --
Normalization is a database design technique that organizes tables to reduce redundancy and dependency. 
The primary goal is to separate data into related tables to minimize data duplication and ensure data integrity. 
The process involves dividing a database into two or more tables and defining relationships between the tables.
Common types of Normal forms are : First Normal Form, Second Normal Form, Third Normal Form, Boyce-Codd Normal form
 
-- 10) What does a join in MySQL mean?  -- 
In MySQL, a join is a method of combining rows from two or more tables based on a related column between them. 
Joins allow you to retrieve data from multiple tables as if they were a single table. 
The common types of joins are: INNER JOIN, LEFT OUTER JOIN, RIGHT OUTER JOIN, FULL JOIN.
 
-- 11) 19.What do you understand about DDL, DCL, and DML in MySQL? -- 
DDL stands for data defination language
These commands are used to define the database structure or schema.
Keywords : CREATE, ALTER, DROP, TRUNCATE

DCL stands for Data Control Language
These commands are used to control access to data in the database.
Keywords : GRANT, REVOKE

DML stands for Data Manipulation Language 
These commands are used for managing data within schema objects.
Keywords : SELECT, INSERT, UPDATE, DELETE

-- 12) What is the role of the MySQL JOIN clause in a query, and what are some common types of joins? -- 
The MySQL JOIN clause is used to combine records from two or more tables in a database based on a related column between them. 
The JOIN clause helps in retrieving data from multiple tables in a single query, which is essential for relational database management.
The common types of joins are: INNER JOIN, LEFT OUTER JOIN, RIGHT OUTER JOIN, FULL JOIN.