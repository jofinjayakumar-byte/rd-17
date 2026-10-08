create database jofin;
use jofin;
SET SERVEROUTPUT ON;
CREATE TABLE Student17 (
    Student_ID NUMBER(5) PRIMARY KEY,
    Student_Name VARCHAR2(30)
);
INSERT INTO Student17 VALUES (101, 'Arun');
INSERT INTO Student17 VALUES (102, 'Divya');
INSERT INTO Student17 VALUES (103, 'Karthick');
COMMIT;
CREATE OR REPLACE FUNCTION Count_Students17
RETURN NUMBER
IS
    C NUMBER;
BEGIN
    SELECT COUNT(*) INTO C
    FROM Student17;

    RETURN C;
END;
/
BEGIN
    DBMS_OUTPUT.PUT_LINE(
        'Number of Students = ' || Count_Students17()
    );
END;
/
