-- USING ASSESSMENT DATABASE-- 
USE ASSESSMENT;

-- CREATING TABLE AND INSERTING VAUES -- 
CREATE TABLE ASSESSMENT2 
(stdID int, stdNAME VARCHAR(40), SEX VARCHAR(10), PERCENTAGE INT, CLASS INT, Sec varchar(20), Stream varchar(20), DOB date);
INSERT INTO ASSESSMENT2 VALUES (1001, "Surekha Joshi", "Female", 82, 12, "A", "Science", STR_TO_DATE('3/8/1998', '%m/%d/%Y'));
-- READING TABLE --
select * from assessment2;

-- DELETE ROW-- 
delete from assessment2 where class = 12 limit 1;

-- INSERTING VALUES--
INSERT INTO ASSESSMENT2 VALUES (1002, "MAAHI AGARWAL", "Female", 56, 11, "C", "Commerce", STR_TO_DATE('11/23/2008', '%m/%d/%Y'));
INSERT INTO ASSESSMENT2 VALUES (1003, "Sanam Verma", "Male", 59, 11, "C", "Commerce", STR_TO_DATE('6/28/2006', '%m/%d/%Y'));
INSERT INTO ASSESSMENT2 VALUES (1004, "Ronit Kumar", "Male", 63, 11, "C", "Commerce", STR_TO_DATE('11/5/1997', '%m/%d/%Y'));
INSERT INTO ASSESSMENT2 VALUES (1005, "Dipesh Pulkit", "Male", 78, 11, "B", "Science", STR_TO_DATE('14/9/2003', '%m/%d/%Y'));
INSERT INTO ASSESSMENT2 VALUES (1006, "JAHANVI Puri", "Female", 60, 11, "B", "Commerce", STR_TO_DATE('11/7/2008', '%m/%d/%Y'));
INSERT INTO ASSESSMENT2 VALUES (1007, "Sanam Kumar", "Male", 23, 12, "F", "Commerce", STR_TO_DATE('3/8/1998', '%m/%d/%Y'));
INSERT INTO ASSESSMENT2 VALUES (1008, "Sahil Saras", "Male", 56, 11, "C", "Commerce", STR_TO_DATE('11/7/2008', '%m/%d/%Y'));
INSERT INTO ASSESSMENT2 VALUES (1009, "AKSHARA Agarwal", "Female", 72, 12, "B", "Commerce", STR_TO_DATE('10/1/2006', '%m/%d/%Y'));
INSERT INTO ASSESSMENT2 VALUES (1010, "STUTI MISHRA", "Female", 39, 11, "F", "Science", STR_TO_DATE('11/23/2008', '%m/%d/%Y'));
INSERT INTO ASSESSMENT2 VALUES (1011, "HARSH AGARWAL", "Male", 42, 11, "C", "Science", STR_TO_DATE('3/8/1998', '%m/%d/%Y'));
INSERT INTO ASSESSMENT2 VALUES (1012, "NIKUNJ AGARWAL", "Male", 49, 12, "C", "Commerce", STR_TO_DATE('28/6/1998', '%m/%d/%Y'));
INSERT INTO ASSESSMENT2 VALUES (1013, "AKRITI SAXENA", "Female", 89, 12, "A", "Science", STR_TO_DATE('11/23/2008', '%m/%d/%Y'));
INSERT INTO ASSESSMENT2 VALUES (1014, "TANI RASTOGI", "Female", 82, 12, "A", "Science", STR_TO_DATE('11/23/2008', '%m/%d/%Y'));

-- READING THE TABLE-- 
SELECT * FROM ASSESSMENT2;

-- IMPLEMETING QUERY--
-- 1 To display all the records form STUDENT table. SELECT * FROM student ;  --
SELECT * FROM ASSESSMENT2;

-- 2. To display any name and date of birth from the table STUDENT. SELECT StdName, DOB FROM student ;  -- 
SELECT stdNAME, DOB FROM ASSESSMENT2;

-- 3. To display all students record where percentage is greater of equal to 80 FROM student table. SELECT * FROM student WHERE percentage >= 80; -- 
SELECT * FROM ASSESSMENT2 WHERE PERCENTAGE >= 80;

-- 4. To display student name, stream and percentage where percentage of student is more than 80 SELECT StdName, Stream, Percentage WHERE percentage > 80; --   
SELECT stdNAME, PERCENTAGE, Stream FROM ASSESSMENT2 WHERE PERCENTAGE >80;

-- 5. To display all records of science students whose percentage is more than 75 form student table. SELECT * FORM student WHERE stream = ‘Science’ AND percentage > 75;-- 
SELECT * FROM ASSESSMENT2 WHERE STREAM = "SCIENCE" AND PERCENTAGE >75;