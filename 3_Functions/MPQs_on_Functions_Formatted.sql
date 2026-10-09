-- ============================================================
-- MIXED PRACTICE QUESTIONS: FUNCTIONS
-- Schema: SCOTT
--
-- Questions are preserved as comments.
-- SQL queries remain executable.
-- Original output tables and row counts are preserved as comments.
-- MySQL command-line prompts (mysql>, ->) have been removed.
-- ============================================================

-- MPQs_on_Functions

-- Q1 WAQTD total number of employees
--  and display the result with alias TOTAL_EMPLOYEES.

SELECT COUNT(*) AS TOTAL_EMPLOYEES
FROM EMP;
-- +-----------------+
-- | TOTAL_EMPLOYEES |
-- +-----------------+
-- |              14 |
-- +-----------------+
-- 1 row in set (0.01 sec)


-- q2 WAQTD highest salary, lowest salary and difference between them.

SELECT MAX(SAL) AS HIGHEST_SALARY,
       MIN(SAL) AS LOWEST_SALARY,
       MAX(SAL) - MIN(SAL) AS SALARY_DIFFERENCE
FROM EMP;
-- +----------------+---------------+-------------------+
-- | HIGHEST_SALARY | LOWEST_SALARY | SALARY_DIFFERENCE |
-- +----------------+---------------+-------------------+
-- |           5000 |           800 |              4200 |
-- +----------------+---------------+-------------------+
-- 1 row in set (0.01 sec)


-- Q3 WAQTD employee names in uppercase along with the length of their names.

SELECT UPPER(ENAME) AS EMPLOYEE_NAME,
       LENGTH(ENAME) AS NAME_LENGTH
FROM EMP;
-- +---------------+-------------+
-- | EMPLOYEE_NAME | NAME_LENGTH |
-- +---------------+-------------+
-- | SMITH         |           5 |
-- | ALLEN         |           5 |
-- | WARD          |           4 |
-- | JONES         |           5 |
-- | MARTIN        |           6 |
-- | BLAKE         |           5 |
-- | CLARK         |           5 |
-- | SCOTT         |           5 |
-- | KING          |           4 |
-- | TURNER        |           6 |
-- | ADAMS         |           5 |
-- | JAMES         |           5 |
-- | FORD          |           4 |
-- | MILLER        |           6 |
-- +---------------+-------------+
-- 14 rows in set (0.00 sec)


-- Q4 WAQTD employee name and first
-- three characters of the employee name in uppercase.

SELECT ENAME,
       UPPER(SUBSTR(ENAME, 1, 3)) AS FIRST_THREE_CHARACTERS
FROM EMP;
-- +--------+------------------------+
-- | ENAME  | FIRST_THREE_CHARACTERS |
-- +--------+------------------------+
-- | SMITH  | SMI                    |
-- | ALLEN  | ALL                    |
-- | WARD   | WAR                    |
-- | JONES  | JON                    |
-- | MARTIN | MAR                    |
-- | BLAKE  | BLA                    |
-- | CLARK  | CLA                    |
-- | SCOTT  | SCO                    |
-- | KING   | KIN                    |
-- | TURNER | TUR                    |
-- | ADAMS  | ADA                    |
-- | JAMES  | JAM                    |
-- | FORD   | FOR                    |
-- | MILLER | MIL                    |
-- +--------+------------------------+
-- 14 rows in set (0.00 sec)


-- Q5 WAQTD employee name along with the reverse of the employee name.

SELECT ENAME,
       REVERSE(ENAME) AS REVERSED_NAME
FROM EMP;
-- +--------+---------------+
-- | ENAME  | REVERSED_NAME |
-- +--------+---------------+
-- | SMITH  | HTIMS         |
-- | ALLEN  | NELLA         |
-- | WARD   | DRAW          |
-- | JONES  | SENOJ         |
-- | MARTIN | NITRAM        |
-- | BLAKE  | EKALB         |
-- | CLARK  | KRALC         |
-- | SCOTT  | TTOCS         |
-- | KING   | GNIK          |
-- | TURNER | RENRUT        |
-- | ADAMS  | SMADA         |
-- | JAMES  | SEMAJ         |
-- | FORD   | DROF          |
-- | MILLER | RELLIM        |
-- +--------+---------------+
-- 14 rows in set (0.00 sec)


-- Q6 WAQTD employee name and display "Employee : ENAME" using CONCAT().


SELECT CONCAT('Employee : ', ENAME) AS EMPLOYEE_DETAILS
FROM EMP;
-- +-------------------+
-- | EMPLOYEE_DETAILS  |
-- +-------------------+
-- | Employee : SMITH  |
-- | Employee : ALLEN  |
-- | Employee : WARD   |
-- | Employee : JONES  |
-- | Employee : MARTIN |
-- | Employee : BLAKE  |
-- | Employee : CLARK  |
-- | Employee : SCOTT  |
-- | Employee : KING   |
-- | Employee : TURNER |
-- | Employee : ADAMS  |
-- | Employee : JAMES  |
-- | Employee : FORD   |
-- | Employee : MILLER |
-- +-------------------+
-- 14 rows in set (0.00 sec)


-- Q7 WAQTD average salary rounded to 2 decimal places.

SELECT ROUND(AVG(SAL), 2) AS AVERAGE_SALARY
FROM EMP;
-- +----------------+
-- | AVERAGE_SALARY |
-- +----------------+
-- |        2073.21 |
-- +----------------+
-- 1 row in set (0.00 sec)


-- Q8 WAQTD average salary truncated to 2 decimal places.

SELECT TRUNCATE(AVG(SAL), 2) AS AVERAGE_SALARY
FROM EMP;
-- +----------------+
-- | AVERAGE_SALARY |
-- +----------------+
-- |        2073.21 |
-- +----------------+
-- 1 row in set (0.00 sec)


-- Q9 WAQTD employee names and position of letter 'A' in their names.

SELECT ENAME,
       INSTR(ENAME, 'A') AS POSITION_OF_A
FROM EMP;
-- +--------+---------------+
-- | ENAME  | POSITION_OF_A |
-- +--------+---------------+
-- | SMITH  |             0 |
-- | ALLEN  |             1 |
-- | WARD   |             2 |
-- | JONES  |             0 |
-- | MARTIN |             2 |
-- | BLAKE  |             3 |
-- | CLARK  |             3 |
-- | SCOTT  |             0 |
-- | KING   |             0 |
-- | TURNER |             0 |
-- | ADAMS  |             1 |
-- | JAMES  |             2 |
-- | FORD   |             0 |
-- | MILLER |             0 |
-- +--------+---------------+
-- 14 rows in set (0.00 sec)


-- Q10 WAQTD employee names and commission, replacing NULL commissions with 0.

SELECT ENAME,
       IFNULL(COMM, 0) AS COMMISSION
FROM EMP;
-- +--------+------------+
-- | ENAME  | COMMISSION |
-- +--------+------------+
-- | SMITH  |          0 |
-- | ALLEN  |        300 |
-- | WARD   |        500 |
-- | JONES  |          0 |
-- | MARTIN |       1400 |
-- | BLAKE  |          0 |
-- | CLARK  |          0 |
-- | SCOTT  |          0 |
-- | KING   |          0 |
-- | TURNER |          0 |
-- | ADAMS  |          0 |
-- | JAMES  |          0 |
-- | FORD   |          0 |
-- | MILLER |          0 |
-- +--------+------------+
-- 14 rows in set (0.00 sec)


-- Q11 WAQTD employee names left-padded with '*' to a total length of 10 characters.

SELECT ENAME,
       LPAD(ENAME, 10, '*') AS PADDED_NAME
FROM EMP;
-- +--------+-------------+
-- | ENAME  | PADDED_NAME |
-- +--------+-------------+
-- | SMITH  | *****SMITH  |
-- | ALLEN  | *****ALLEN  |
-- | WARD   | ******WARD  |
-- | JONES  | *****JONES  |
-- | MARTIN | ****MARTIN  |
-- | BLAKE  | *****BLAKE  |
-- | CLARK  | *****CLARK  |
-- | SCOTT  | *****SCOTT  |
-- | KING   | ******KING  |
-- | TURNER | ****TURNER  |
-- | ADAMS  | *****ADAMS  |
-- | JAMES  | *****JAMES  |
-- | FORD   | ******FORD  |
-- | MILLER | ****MILLER  |
-- +--------+-------------+
-- 14 rows in set (0.00 sec)


-- Q12 WAQTD employee names
-- right-padded with '*' to a total length of 10 characters.

SELECT ENAME,
       LPAD(ENAME, 10, '*') AS PADDED_NAME
FROM EMP;
-- +--------+-------------+
-- | ENAME  | PADDED_NAME |
-- +--------+-------------+
-- | SMITH  | *****SMITH  |
-- | ALLEN  | *****ALLEN  |
-- | WARD   | ******WARD  |
-- | JONES  | *****JONES  |
-- | MARTIN | ****MARTIN  |
-- | BLAKE  | *****BLAKE  |
-- | CLARK  | *****CLARK  |
-- | SCOTT  | *****SCOTT  |
-- | KING   | ******KING  |
-- | TURNER | ****TURNER  |
-- | ADAMS  | *****ADAMS  |
-- | JAMES  | *****JAMES  |
-- | FORD   | ******FORD  |
-- | MILLER | ****MILLER  |
-- +--------+-------------+
-- 14 rows in set (0.00 sec)

-- Q13 WAQTD employee name and number of months worked in the company till today.

SELECT ENAME,
       TIMESTAMPDIFF(MONTH, HIREDATE, CURDATE()) AS MONTHS_WORKED
FROM EMP;
-- +--------+---------------+
-- | ENAME  | MONTHS_WORKED |
-- +--------+---------------+
-- | SMITH  |           549 |
-- | ALLEN  |           547 |
-- | WARD   |           547 |
-- | JONES  |           546 |
-- | MARTIN |           540 |
-- | BLAKE  |           545 |
-- | CLARK  |           543 |
-- | SCOTT  |           525 |
-- | KING   |           538 |
-- | TURNER |           553 |
-- | ADAMS  |           524 |
-- | JAMES  |           538 |
-- | FORD   |           538 |
-- | MILLER |           536 |
-- +--------+---------------+
-- 14 rows in set (0.00 sec)


-- Q14 WAQTD employee name and hire date in the format DD-Mon-YYYY.

SELECT ENAME,
       DATE_FORMAT(HIREDATE, '%d-%b-%Y') AS FORMATTED_HIREDATE
FROM EMP;
-- +--------+--------------------+
-- | ENAME  | FORMATTED_HIREDATE |
-- +--------+--------------------+
-- | SMITH  | 17-Dec-1980        |
-- | ALLEN  | 20-Feb-1981        |
-- | WARD   | 22-Feb-1981        |
-- | JONES  | 02-Apr-1981        |
-- | MARTIN | 28-Sep-1981        |
-- | BLAKE  | 01-May-1981        |
-- | CLARK  | 09-Jun-1981        |
-- | SCOTT  | 09-Dec-1982        |
-- | KING   | 17-Nov-1981        |
-- | TURNER | 08-Sep-1980        |
-- | ADAMS  | 12-Jan-1983        |
-- | JAMES  | 03-Dec-1981        |
-- | FORD   | 03-Dec-1981        |
-- | MILLER | 23-Jan-1982        |
-- +--------+--------------------+
-- 14 rows in set (0.00 sec)


-- Q15 WAQTD employee name, hire date and last day of the month in which the employee was hired.

SELECT ENAME,
       HIREDATE,
       LAST_DAY(HIREDATE) AS MONTH_END
FROM EMP;
-- +--------+------------+------------+
-- | ENAME  | HIREDATE   | MONTH_END  |
-- +--------+------------+------------+
-- | SMITH  | 1980-12-17 | 1980-12-31 |
-- | ALLEN  | 1981-02-20 | 1981-02-28 |
-- | WARD   | 1981-02-22 | 1981-02-28 |
-- | JONES  | 1981-04-02 | 1981-04-30 |
-- | MARTIN | 1981-09-28 | 1981-09-30 |
-- | BLAKE  | 1981-05-01 | 1981-05-31 |
-- | CLARK  | 1981-06-09 | 1981-06-30 |
-- | SCOTT  | 1982-12-09 | 1982-12-31 |
-- | KING   | 1981-11-17 | 1981-11-30 |
-- | TURNER | 1980-09-08 | 1980-09-30 |
-- | ADAMS  | 1983-01-12 | 1983-01-31 |
-- | JAMES  | 1981-12-03 | 1981-12-31 |
-- | FORD   | 1981-12-03 | 1981-12-31 |
-- | MILLER | 1982-01-23 | 1982-01-31 |
-- +--------+------------+------------+
-- 14 rows in set (0.00 sec)


-- Q16 WAQTD employee names in lowercase and replace the letter 'a' with '@'.

SELECT LOWER(ENAME) AS ORIGINAL_NAME,
       REPLACE(LOWER(ENAME), 'a', '@') AS MODIFIED_NAME
FROM EMP;
-- +---------------+---------------+
-- | ORIGINAL_NAME | MODIFIED_NAME |
-- +---------------+---------------+
-- | smith         | smith         |
-- | allen         | @llen         |
-- | ward          | w@rd          |
-- | jones         | jones         |
-- | martin        | m@rtin        |
-- | blake         | bl@ke         |
-- | clark         | cl@rk         |
-- | scott         | scott         |
-- | king          | king          |
-- | turner        | turner        |
-- | adams         | @d@ms         |
-- | james         | j@mes         |
-- | ford          | ford          |
-- | miller        | miller        |
-- +---------------+---------------+
-- 14 rows in set (0.00 sec)


-- Q17 WAQTD employee names and check whether their salary is even or odd using MOD().

SELECT ENAME,
       SAL,
       MOD(SAL, 2) AS REMAINDER
FROM EMP;
-- +--------+------+-----------+
-- | ENAME  | SAL  | REMAINDER |
-- +--------+------+-----------+
-- | SMITH  |  800 |         0 |
-- | ALLEN  | 1600 |         0 |
-- | WARD   | 1250 |         0 |
-- | JONES  | 2975 |         1 |
-- | MARTIN | 1250 |         0 |
-- | BLAKE  | 2850 |         0 |
-- | CLARK  | 2450 |         0 |
-- | SCOTT  | 3000 |         0 |
-- | KING   | 5000 |         0 |
-- | TURNER | 1500 |         0 |
-- | ADAMS  | 1100 |         0 |
-- | JAMES  |  950 |         0 |
-- | FORD   | 3000 |         0 |
-- | MILLER | 1300 |         0 |
-- +--------+------+-----------+
-- 14 rows in set (0.00 sec)


-- Q18 WAQTD employee names and display the first character and last character of their names.

SELECT ENAME,
       SUBSTR(ENAME, 1, 1) AS FIRST_CHARACTER,
       SUBSTR(ENAME, LENGTH(ENAME), 1) AS LAST_CHARACTER
FROM EMP;
-- +--------+-----------------+----------------+
-- | ENAME  | FIRST_CHARACTER | LAST_CHARACTER |
-- +--------+-----------------+----------------+
-- | SMITH  | S               | H              |
-- | ALLEN  | A               | N              |
-- | WARD   | W               | D              |
-- | JONES  | J               | S              |
-- | MARTIN | M               | N              |
-- | BLAKE  | B               | E              |
-- | CLARK  | C               | K              |
-- | SCOTT  | S               | T              |
-- | KING   | K               | G              |
-- | TURNER | T               | R              |
-- | ADAMS  | A               | S              |
-- | JAMES  | J               | S              |
-- | FORD   | F               | D              |
-- | MILLER | M               | R              |
-- +--------+-----------------+----------------+
-- 14 rows in set (0.00 sec)


-- Q19 WAQTD employee names and display them in the format:
-- "ENAME (Length = X)"

SELECT CONCAT(ENAME,
              ' (Length = ',
              LENGTH(ENAME),
              ')') AS EMPLOYEE_DETAILS
FROM EMP;
-- +---------------------+
-- | EMPLOYEE_DETAILS    |
-- +---------------------+
-- | SMITH (Length = 5)  |
-- | ALLEN (Length = 5)  |
-- | WARD (Length = 4)   |
-- | JONES (Length = 5)  |
-- | MARTIN (Length = 6) |
-- | BLAKE (Length = 5)  |
-- | CLARK (Length = 5)  |
-- | SCOTT (Length = 5)  |
-- | KING (Length = 4)   |
-- | TURNER (Length = 6) |
-- | ADAMS (Length = 5)  |
-- | JAMES (Length = 5)  |
-- | FORD (Length = 4)   |
-- | MILLER (Length = 6) |
-- +---------------------+
-- 14 rows in set (0.00 sec)


-- Q20 WAQTD total salary paid by the company,
-- average salary, highest salary and lowest salary.

SELECT SUM(SAL) AS TOTAL_SALARY,
       AVG(SAL) AS AVERAGE_SALARY,
       MAX(SAL) AS HIGHEST_SALARY,
       MIN(SAL) AS LOWEST_SALARY
FROM EMP;
-- +--------------+----------------+----------------+---------------+
-- | TOTAL_SALARY | AVERAGE_SALARY | HIGHEST_SALARY | LOWEST_SALARY |
-- +--------------+----------------+----------------+---------------+
-- |        29025 |      2073.2143 |           5000 |           800 |
-- +--------------+----------------+----------------+---------------+
-- 1 row in set (0.00 sec)
