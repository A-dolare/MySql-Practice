-- =====================================================
-- 21_Single_Row_Functions.sql
-- Repository Formatted Version
-- Directly executable in MySQL
-- Note: Console output has been converted to comments.
-- =====================================================

/*                           SINGLE ROW FUNCTIONS                      */

-- =====================================================
-- 1 LENGTH()- It is used to count the number of characters present In the given string
-- =====================================================

-- EX: WAQT count number of characters present in 'SMITH' .

SELECT LENGTH(ENAME)
FROM EMP
WHERE ENAME = 'SMITH';
-- +---------------+
-- | LENGTH(ENAME) |
-- +---------------+
-- |             5 |
-- +---------------+

-- EX (METHOD - 2):

SELECT LENGTH('SMITH')
FROM DUAL;
-- +-----------------+
-- | LENGTH('SMITH') |
-- +-----------------+
-- |               5 |
-- +-----------------+

-- =====================================================
-- CONCAT() - It is used to join the given two strings
-- =====================================================

-- EX: WAQTD the string 'MRSPIDERMAN'

SELECT CONCAT('MR', 'SPIDERMAN')
FROM DUAL;
-- +---------------------------+
-- | CONCAT('MR', 'SPIDERMAN') |
-- +---------------------------+
-- | MRSPIDERMAN               |
-- +---------------------------+

-- =====================================================
-- UPPER - It is used to convert a given string to upper case
-- =====================================================

-- EX: WAQTD LOKEY from lokey

SELECT UPPER('lowkey')
FROM DUAL;
-- +-----------------+
-- | UPPER('lowkey') |
-- +-----------------+
-- | LOWKEY          |
-- +-----------------+

-- =====================================================
-- LOWER() - It is used to convert a given string to lower case
-- =====================================================

-- EX: WAQTD high given HIGH

SELECT LOWER('HIGH')
FROM DUAL;
-- +---------------+
-- | LOWER('HIGH') |
-- +---------------+
-- | high          |
-- +---------------+

-- =====================================================
-- SUBSTRING() - It is used to extract a part of string from the given  Original string
-- =====================================================

-- EX WAQTD THE FIRST 3 CHARACTERS OF THE NAMES OF EMPLOYESS FROM EMP

SELECT SUBSTRING(ENAME, 1, 3)
FROM EMP;
-- +------------------------+
-- | SUBSTRING(ENAME, 1, 3) |
-- +------------------------+
-- | SMI                    |
-- | ALL                    |
-- | WAR                    |
-- | JON                    |
-- | MAR                    |
-- | BLA                    |
-- | CLA                    |
-- | SCO                    |
-- | KIN                    |
-- | TUR                    |
-- | ADA                    |
-- | JAM                    |
-- | FOR                    |
-- | MIL                    |
-- +------------------------+

-- EX 2 WAQTD THE LAST 3 CHARACTERS OF THE NAMES OF EMPLOYESS FROM EMP

SELECT SUBSTRING(ENAME, -3)
FROM EMP;
-- +----------------------+
-- | SUBSTRING(ENAME, -3) |
-- +----------------------+
-- | ITH                  |
-- | LEN                  |
-- | ARD                  |
-- | NES                  |
-- | TIN                  |
-- | AKE                  |
-- | ARK                  |
-- | OTT                  |
-- | ING                  |
-- | NER                  |
-- | AMS                  |
-- | MES                  |
-- | ORD                  |
-- | LER                  |
-- +----------------------+

-- EX 3 WAQTD THE FIRST HALF CHARACTERS OF THE NAMES OF EMPLOYESS FROM EMP

SELECT SUBSTRING(ENAME, 1, LENGTH(ENAME) / 2)
FROM EMP;
-- +----------------------------------------+
-- | SUBSTRING(ENAME, 1, LENGTH(ENAME) / 2) |
-- +----------------------------------------+
-- | SMI                                    |
-- | ALL                                    |
-- | WA                                     |
-- | JON                                    |
-- | MAR                                    |
-- | BLA                                    |
-- | CLA                                    |
-- | SCO                                    |
-- | KI                                     |
-- | TUR                                    |
-- | ADA                                    |
-- | JAM                                    |
-- | FO                                     |
-- | MIL                                    |
-- +----------------------------------------+

-- EX 4 WAQTD THE LAST HALF CHARACTERS OF THE NAMES OF EMPLOYESS FROM EMP

SELECT SUBSTRING(ENAME, LENGTH(ENAME) / 2 + 1)
FROM EMP;
-- +-----------------------------------------+
-- | SUBSTRING(ENAME, LENGTH(ENAME) / 2 + 1) |
-- +-----------------------------------------+
-- | TH                                      |
-- | EN                                      |
-- | RD                                      |
-- | ES                                      |
-- | TIN                                     |
-- | KE                                      |
-- | RK                                      |
-- | TT                                      |
-- | NG                                      |
-- | NER                                     |
-- | MS                                      |
-- | ES                                      |
-- | RD                                      |
-- | LER                                     |
-- +-----------------------------------------+

-- =====================================================
-- 6. REVERSE() - It is used to reverse a given string
-- =====================================================

-- EX: WAQTD THE REVERSE OF THE NAME 'SMITH'

SELECT REVERSE('SMITH')
FROM DUAL;
-- +------------------+
-- | REVERSE('SMITH') |
-- +------------------+
-- | HTIMS            |
-- +------------------+

-- =====================================================
-- 7. REPLACE() - It is used to replace a string with another string in The original string
-- =====================================================

-- EX: WAQTD REPLACE ALL THE 'A's in 'BANANA'

SELECT REPLACE('BANANA', 'A', 'C')
FROM DUAL
;
-- +-----------------------------+
-- | REPLACE('BANANA', 'A', 'C') |
-- +-----------------------------+
-- | BCNCNC                      |
-- +-----------------------------+

-- Q1 WAQTD the number of times char 'A' is present in BANANA !!!

SELECT LENGTH('BANANA') - LENGTH(REPLACE('BANANA', 'A', ''))
FROM DUAL;
-- +-------------------------------------------------------+
-- | LENGTH('BANANA') - LENGTH(REPLACE('BANANA', 'A', '')) |
-- +-------------------------------------------------------+
-- |                                                     3 |
-- +-------------------------------------------------------+

-- Q2 WAQTD to count number of time 'A' is present in 'MALAYALAM'

SELECT LENGTH('MALAYALAM') - LENGTH(REPLACE('MALAYALAM', 'A', ''))
FROM DUAL;
-- +-------------------------------------------------------------+
-- | LENGTH('MALAYALAM') - LENGTH(REPLACE('MALAYALAM', 'A', '')) |
-- +-------------------------------------------------------------+
-- |                                                           4 |
-- +-------------------------------------------------------------+

-- =====================================================
-- 8. MOD() - It is used to obtain modulus/remainder of the given number
-- =====================================================
-- WAQTD remainder when 5 is divided by 2
SELECT MOD(5, 2)
FROM DUAL;
-- +-----------+
-- | MOD(5, 2) |
-- +-----------+
-- |         1 |
-- +-----------+

-- =====================================================
-- 9. ROUND() - It is used to Round-off the given number based on the scale value
-- =====================================================

-- EX: FIND THE ROUND OF 2.4

SELECT ROUND(2.4)
FROM DUAL
;
-- +------------+
-- | ROUND(2.4) |
-- +------------+
-- |          2 |
-- +------------+

-- EX: FIND THE ROUND OF 2.5

SELECT ROUND(2.5)
FROM DUAL;
-- +------------+
-- | ROUND(2.5) |
-- +------------+
-- |          3 |
-- +------------+

-- EX: FIND THE ROUND OF 2.8

SELECT ROUND(2.8)
FROM DUAL;
-- +------------+
-- | ROUND(2.8) |
-- +------------+
-- |          3 |
-- +------------+

-- EX: FIND THE ROUND OF 87521.12 (BEFORE DECIMAL BY 1)

SELECT ROUND(87521.12, -1)
FROM DUAL;
-- +---------------------+
-- | ROUND(87521.12, -1) |
-- +---------------------+
-- |               87520 |
-- +---------------------+

-- EX: FIND THE ROUND OF 87521.12 (BEFORE DECIMAL BY 2)
SELECT ROUND(87521.12, -2)
FROM DUAL;
-- +---------------------+
-- | ROUND(87521.12, -2) |
-- +---------------------+
-- |               87500 |
-- +---------------------+

-- EX: FIND THE ROUND OF 87521.12 (BEFORE DECIMAL BY 3)

SELECT ROUND(87521.12, -3)
FROM DUAL;
-- +---------------------+
-- | ROUND(87521.12, -3) |
-- +---------------------+
-- |               88000 |
-- +---------------------+

-- EX FIND THE ROUND OF 87521.12 (BEFORE DECIMAL BY 4)

SELECT ROUND(87521.12, -4)
FROM DUAL;
-- +---------------------+
-- | ROUND(87521.12, -4) |
-- +---------------------+
-- |               90000 |
-- +---------------------+

-- EX: FIND THE ROUND OF 124.257

SELECT ROUND(124.257, 0)
FROM DUAL;
-- +-------------------+
-- | ROUND(124.257, 0) |
-- +-------------------+
-- |               124 |
-- +-------------------+

-- EX: FIND THE ROUND OF 124.257 (AFTER DECIMAL BY 1)

SELECT ROUND(124.257, 1)
FROM DUAL;
-- +-------------------+
-- | ROUND(124.257, 1) |
-- +-------------------+
-- |             124.3 |
-- +-------------------+

-- EX: FIND THE ROUND OF 124.257 (AFTER DECIMAL BY 2)

SELECT ROUND(124.257, 2)
FROM DUAL;
-- +-------------------+
-- | ROUND(124.257, 2) |
-- +-------------------+
-- |            124.26 |
-- +-------------------+

-- mysql> # 10. TRUNC - It is similar to ROUND() but it always rounds-off the given number to the lower value

-- EX: TRUNCATE 123.456

SELECT TRUNCATE(123.456, 0)
FROM DUAL;
-- +----------------------+
-- | TRUNCATE(123.456, 0) |
-- +----------------------+
-- |                  123 |
-- +----------------------+

-- EX: TRUNCATE 123.456 (BEFORE DECIMAL BY 1)

SELECT TRUNCATE(123.456, -1)
FROM DUAL;
-- +-----------------------+
-- | TRUNCATE(123.456, -1) |
-- +-----------------------+
-- |                   120 |
-- +-----------------------+

-- EX: TRUNCATE 123.456 (AFTER DECIMAL BY 2)

SELECT TRUNCATE(123.456, 2)
FROM DUAL;
-- +----------------------+
-- | TRUNCATE(123.456, 2) |
-- +----------------------+
-- |               123.45 |
-- +----------------------+

-- =====================================================
-- 11. INSTR() - it is used to obtain the position in which the string is present in the Original string
-- =====================================================

-- EX: WAQTD THE INDEX OF FIRST OCCURANCE OF 'A'

SELECT INSTR('BANANA', 'A')
FROM DUAL;
-- +----------------------+
-- | INSTR('BANANA', 'A') |
-- +----------------------+
-- |                    2 |
-- +----------------------+

-- EX: WAQTD THE INDEX OF FIRST OCCURANCE OF 'NA'

SELECT INSTR('BANANA', 'NA')
FROM DUAL;
-- +-----------------------+
-- | INSTR('BANANA', 'NA') |
-- +-----------------------+
-- |                     3 |
-- +-----------------------+

-- Q1 WAQTD names of employees having at least one 'A'

SELECT ENAME
FROM EMP
WHERE INSTR(ENAME, 'A') > 0;
-- +--------+
-- | ENAME  |
-- +--------+
-- | ALLEN  |
-- | WARD   |
-- | MARTIN |
-- | BLAKE  |
-- | CLARK  |
-- | ADAMS  |
-- | JAMES  |
-- +--------+

-- Q2 WAQTD THE NAMES OF EMPLOYEES HAVING 2 'A's IN THE EMPLOYEES

SELECT ENAME
FROM EMP
WHERE LENGTH(ENAME) - LENGTH(REPLACE(ENAME, 'A', '')) > 1;
-- +-------+
-- | ENAME |
-- +-------+
-- | ADAMS |
-- +-------+

-- METHOD 2

SELECT ENAME
FROM EMP
WHERE ENAME LIKE '%A%A%';
-- +-------+
-- | ENAME |
-- +-------+
-- | ADAMS |
-- +-------+

-- Q3 WAQTD THE NAMES OF EMPLOYEES HAVING 3 'A's IN THE EMPLOYEES

SELECT ENAME
FROM EMP
WHERE LENGTH(ENAME) - LENGTH(REPLACE(ENAME, 'A', '')) > 2;

-- Q4 WAQTD THE NAMES OF EMPLOYEES HAVING 2 'A's IN THE EMPLOYEES

SELECT ENAME
FROM EMP
WHERE LENGTH(ENAME) - LENGTH(REPLACE(ENAME, 'A', '')) = 2;
-- +-------+
-- | ENAME |
-- +-------+
-- | ADAMS |
-- +-------+

-- =====================================================
-- 12 LAST_DAY - it is used to Obtain the last day in the particular of the given date
-- =====================================================
-- WAQTD LAST DAY OF THE MONTH FOR EACH EMPLOYEE'S HIREDATE
SELECT LAST_DAY(HIREDATE)
FROM EMP;
-- +--------------------+
-- | LAST_DAY(HIREDATE) |
-- +--------------------+
-- | 1980-12-31         |
-- | 1981-02-28         |
-- | 1981-02-28         |
-- | 1981-04-30         |
-- | 1981-09-30         |
-- | 1981-05-31         |
-- | 1981-06-30         |
-- | 1982-12-31         |
-- | 1981-11-30         |
-- | 1980-09-30         |
-- | 1983-01-31         |
-- | 1981-12-31         |
-- | 1981-12-31         |
-- | 1982-01-31         |
-- +--------------------+

-- EX:
SELECT LAST_DAY(SYSDATE())
FROM DUAL;
-- +---------------------+
-- | LAST_DAY(SYSDATE()) |
-- +---------------------+
-- | 2026-08-31          |
-- +---------------------+

SELECT
DATE_FORMAT(NOW(), '%Y') AS YYYY,          -- 2020
DATE_FORMAT(NOW(), '%y') AS YY,            -- 20
DATE_FORMAT(NOW(), '%M') AS MONTH,         -- July
DATE_FORMAT(NOW(), '%b') AS MON,           -- Jul
DATE_FORMAT(NOW(), '%m') AS MM,            -- 07
DATE_FORMAT(NOW(), '%W') AS DAY,           -- Wednesday
DATE_FORMAT(NOW(), '%a') AS DY,            -- Wed
DATE_FORMAT(NOW(), '%d') AS DD,            -- 08
DATE_FORMAT(NOW(), '%w') AS D,             -- 4
DATE_FORMAT(NOW(), '%H') AS HH24,          -- 17
DATE_FORMAT(NOW(), '%h') AS HH12,          -- 05
DATE_FORMAT(NOW(), '%i') AS MI,            -- 22
DATE_FORMAT(NOW(), '%s') AS SS;            -- 53
-- +------+------+--------+------+------+----------+------+------+------+------+------+------+------+
-- | YYYY | YY   | MONTH  | MON  | MM   | DAY      | DY   | DD   | D    | HH24 | HH12 | MI   | SS   |
-- +------+------+--------+------+------+----------+------+------+------+------+------+------+------+
-- | 2026 | 26   | August | Aug  | 08   | Thursday | Thu  | 20   | 4    | 15   | 03   | 53   | 43   |
-- +------+------+--------+------+------+----------+------+------+------+------+------+------+------+

-- =====================================================
-- DATE_FORMAT()
-- =====================================================

-- EX: WAQTD current year, month, day, hour, minute and second using DATE_FORMAT()

SELECT
DATE_FORMAT(NOW(), '%Y') AS YYYY,          -- 2020
DATE_FORMAT(NOW(), '%y') AS YY,            -- 20
DATE_FORMAT(NOW(), '%M') AS MONTH,         -- July
DATE_FORMAT(NOW(), '%b') AS MON,           -- Jul
DATE_FORMAT(NOW(), '%m') AS MM,            -- 07
DATE_FORMAT(NOW(), '%W') AS DAY,           -- Wednesday
DATE_FORMAT(NOW(), '%a') AS DY,            -- Wed
DATE_FORMAT(NOW(), '%d') AS DD,            -- 08
DATE_FORMAT(NOW(), '%w') AS D,             -- 4
DATE_FORMAT(NOW(), '%H') AS HH24,          -- 17
DATE_FORMAT(NOW(), '%h') AS HH12,          -- 05
DATE_FORMAT(NOW(), '%i') AS MI,            -- 22
DATE_FORMAT(NOW(), '%s') AS SS;            -- 53
-- +------+------+--------+------+------+----------+------+------+------+------+------+------+------+
-- | YYYY | YY   | MONTH  | MON  | MM   | DAY      | DY   | DD   | D    | HH24 | HH12 | MI   | SS   |
-- +------+------+--------+------+------+----------+------+------+------+------+------+------+------+
-- | 2026 | 26   | August | Aug  | 08   | Thursday | Thu  | 20   | 4    | 15   | 03   | 54   | 20   |
-- +------+------+--------+------+------+----------+------+------+------+------+------+------+------+

-- IFNULL()

-- EX

SELECT SAL + IFNULL(COMM, 0)
FROM EMP;
-- +-----------------------+
-- | SAL + IFNULL(COMM, 0) |
-- +-----------------------+
-- |                   800 |
-- |                  1900 |
-- |                  1750 |
-- |                  2975 |
-- |                  2650 |
-- |                  2850 |
-- |                  2450 |
-- |                  3000 |
-- |                  5000 |
-- |                  1500 |
-- |                  1100 |
-- |                   950 |
-- |                  3000 |
-- |                  1300 |
-- +-----------------------+

/*                                                                    ASSIGNMENT QUESTIONS                                                                */

-- Q1 List employees whose name having 4 characters

SELECT ENAME
FROM EMP
WHERE LENGTH(ENAME) = 4;
-- +-------+
-- | ENAME |
-- +-------+
-- | WARD  |
-- | KING  |
-- | FORD  |
-- +-------+

-- Q2 List employees whose job is having 7 characters

SELECT ENAME
FROM EMP
WHERE LENGTH(JOB) = 7;
-- +-------+
-- | ENAME |
-- +-------+
-- | JONES |
-- | BLAKE |
-- | CLARK |
-- | SCOTT |
-- | FORD  |
-- +-------+

-- Q3 Find out how many times letter 'S' occurs in 'qspiders'

SELECT LENGTH('QSPIDERS') - LENGTH(REPLACE('QSPIDERS', 'S', ''))
FROM DUAL;
-- +-----------------------------------------------------------+
-- | LENGTH('QSPIDERS') - LENGTH(REPLACE('QSPIDERS', 'S', '')) |
-- +-----------------------------------------------------------+
-- |                                                         2 |
-- +-----------------------------------------------------------+

-- Q4 List the employees whose job is having last 3 characters as 'man'

SELECT ENAME, JOB
FROM EMP
WHERE SUBSTR(JOB, -3) = 'MAN';
-- +--------+----------+
-- | ENAME  | JOB      |
-- +--------+----------+
-- | ALLEN  | SALESMAN |
-- | WARD   | SALESMAN |
-- | MARTIN | SALESMAN |
-- | TURNER | SALESMAN |
-- +--------+----------+

-- Q5 List employees whose job is having first 3 characters as 'man'

SELECT ENAME, JOB
FROM EMP
WHERE SUBSTR(JOB, 1, 3) = 'MAN';
-- +-------+---------+
-- | ENAME | JOB     |
-- +-------+---------+
-- | JONES | MANAGER |
-- | BLAKE | MANAGER |
-- | CLARK | MANAGER |
-- +-------+---------+

-- Q6 Display all the names whose name is having exactly 1 'L'

SELECT ENAME
FROM EMP
WHERE LENGTH(ENAME) - LENGTH(REPLACE(ENAME, 'L', '')) = 1;
-- +-------+
-- | ENAME |
-- +-------+
-- | BLAKE |
-- | CLARK |
-- +-------+

-- METHOD 2

SELECT ENAME
FROM
EMP
WHERE ENAME LIKE '%L%' AND ENAME NOT LIKE '%L%L%';
-- +-------+
-- | ENAME |
-- +-------+
-- | BLAKE |
-- | CLARK |
-- +-------+

-- Q7 Display emp names which are having letter 'O'

SELECT ENAME
FROM EMP
WHERE ENAME LIKE '%O%';
-- +-------+
-- | ENAME |
-- +-------+
-- | JONES |
-- | SCOTT |
-- | FORD  |
-- +-------+

-- METHOD 2

SELECT ENAME
FROM EMP
WHERE INSTR(ENAME, 'O') > 0;
-- +-------+
-- | ENAME |
-- +-------+
-- | JONES |
-- | SCOTT |
-- | FORD  |
-- +-------+

-- Q9 Calculate number of L in string 'HELLLL'

SELECT LENGTH('HELLLL') - LENGTH(REPLACE('HELLLL', 'L', ''))
;
-- +-------------------------------------------------------+
-- | LENGTH('HELLLL') - LENGTH(REPLACE('HELLLL', 'L', '')) |
-- +-------------------------------------------------------+
-- |                                                     4 |
-- +-------------------------------------------------------+

-- Q10 Display all the employees whose job has a string 'MAN'

SELECT ENAME, JOB
FROM EMP
WHERE INSTR(JOB, 'MAN') > 0;
-- +--------+----------+
-- | ENAME  | JOB      |
-- +--------+----------+
-- | ALLEN  | SALESMAN |
-- | WARD   | SALESMAN |
-- | JONES  | MANAGER  |
-- | MARTIN | SALESMAN |
-- | BLAKE  | MANAGER  |
-- | CLARK  | MANAGER  |
-- | TURNER | SALESMAN |
-- +--------+----------+

-- Q11 Display first 3 characters of ename in lower case and rest everything in upper case.
-- If ename is 'QSPIDERS' then display this as ‘qspIDERS’

SELECT CONCAT(LOWER(SUBSTR('QSPIDERS', 1, 3)), UPPER(SUBSTR('QSPIDERS', 4)))
FROM DUAL;
-- +-----------------------------------------------------------------------+
-- | CONCAT(LOWER(SUBSTR('QSPIDERS', 1, 3)), UPPER(SUBSTR('QSPIDERS', 4))) |
-- +-----------------------------------------------------------------------+
-- | qspIDERS                                                              |
-- +-----------------------------------------------------------------------+

-- Q12 Display the result from emp table as below.
-- SMITH is a CLERK and gets salary 2000
-- Here SMITH is ename column, CLERK is JOB and 2000 is SAL column and rest everything is literal
-- strings.

SELECT CONCAT(ENAME, 'is a ', JOB, ' and gets ', SAL, ' salary')
FROM EMP;
-- +-----------------------------------------------------------+
-- | CONCAT(ENAME, 'is a ', JOB, ' and gets ', SAL, ' salary') |
-- +-----------------------------------------------------------+
-- | SMITHis a CLERK and gets 800 salary                       |
-- | ALLENis a SALESMAN and gets 1600 salary                   |
-- | WARDis a SALESMAN and gets 1250 salary                    |
-- | JONESis a MANAGER and gets 2975 salary                    |
-- | MARTINis a SALESMAN and gets 1250 salary                  |
-- | BLAKEis a MANAGER and gets 2850 salary                    |
-- | CLARKis a MANAGER and gets 2450 salary                    |
-- | SCOTTis a ANALYST and gets 3000 salary                    |
-- | KINGis a PRESIDENT and gets 5000 salary                   |
-- | TURNERis a SALESMAN and gets 1500 salary                  |
-- | ADAMSis a CLERK and gets 1100 salary                      |
-- | JAMESis a CLERK and gets 950 salary                       |
-- | FORDis a ANALYST and gets 3000 salary                     |
-- | MILLERis a CLERK and gets 1300 salary                     |
-- +-----------------------------------------------------------+

-- Q13 list the employees hired on a Wednesday

SELECT ENAME, HIREDATE
FROM EMP
WHERE DATE_FORMAT(HIREDATE, '%W') = 'WEDNESDAY';
-- +-------+------------+
-- | ENAME | HIREDATE   |
-- +-------+------------+
-- | SMITH | 1980-12-17 |
-- | ADAMS | 1983-01-12 |
-- +-------+------------+

-- Q14 list the employees hired on a leap year

SELECT ENAME, HIREDATE
FROM EMP
WHERE MOD(DATE_FORMAT(HIREDATE, '%y'), 4) = 0;
-- +--------+------------+
-- | ENAME  | HIREDATE   |
-- +--------+------------+
-- | SMITH  | 1980-12-17 |
-- | TURNER | 1980-09-08 |
-- +--------+------------+

-- 15 list the employees hired on a Sunday in the month of may

SELECT ENAME, HIREDATE, DATE_FORMAT(HIREDATE, '%W') AS DayName, DATE_FORMAT(HIREDATE, '%M') AS MonthName
FROM EMP
WHERE DATE_FORMAT(HIREDATE, '%M') = 'MAY';
-- +-------+------------+---------+-----------+
-- | ENAME | HIREDATE   | DayName | MonthName |
-- +-------+------------+---------+-----------+
-- | BLAKE | 1981-05-01 | Friday  | May       |
-- +-------+------------+---------+-----------+

-- NO ONE HIRED ON SUNDAY IN MONTH OF MAY
