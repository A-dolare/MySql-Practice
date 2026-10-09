-- ============================================================
-- MIXED PRACTICE QUESTIONS: PROJECTION + SELECTION
-- Schema: SCOTT
--
-- Each question is preserved as a comment.
-- SQL queries remain executable.
-- Original output tables and row counts are preserved as comments.
-- MySQL command-line prompts (mysql>, ->) have been removed.
-- ============================================================

-- Mixed_Practice_Questions_on_Selection


-- Q1 WAQTD name and annual salary of employees working in department 10.

SELECT ENAME,
       SAL * 12 AS ANNUAL_SALARY
FROM EMP
WHERE DEPTNO = 10;
-- +--------+---------------+
-- | ENAME  | ANNUAL_SALARY |
-- +--------+---------------+
-- | CLARK  |         29400 |
-- | KING   |         60000 |
-- | MILLER |         15600 |
-- +--------+---------------+
-- 3 rows in set (0.00 sec)


-- Q2 WAQTD names and jobs of employees whose salary is greater than 2000

SELECT ENAME,
       JOB
FROM EMP
WHERE SAL > 2000;
-- +-------+-----------+
-- | ENAME | JOB       |
-- +-------+-----------+
-- | JONES | MANAGER   |
-- | BLAKE | MANAGER   |
-- | CLARK | MANAGER   |
-- | SCOTT | ANALYST   |
-- | KING  | PRESIDENT |
-- | FORD  | ANALYST   |
-- +-------+-----------+
-- 6 rows in set (0.00 sec)


-- Q3 WAQTD employee name and salary after
-- a hike of 10% for employees working as CLERK.

SELECT ENAME,
       SAL * 1.10 AS HIKED_SALARY
FROM EMP
WHERE JOB = 'CLERK';
-- +--------+--------------+
-- | ENAME  | HIKED_SALARY |
-- +--------+--------------+
-- | SMITH  |       880.00 |
-- | ADAMS  |      1210.00 |
-- | JAMES  |      1045.00 |
-- | MILLER |      1430.00 |
-- +--------+--------------+
-- 4 rows in set (0.00 sec)


-- Q4 WAQTD distinct department numbers in which employees are working

SELECT DISTINCT DEPTNO
FROM EMP;
-- +--------+
-- | DEPTNO |
-- +--------+
-- |     20 |
-- |     30 |
-- |     10 |
-- +--------+
-- 3 rows in set (0.00 sec)


-- Q5 WAQTD employee name and designation in the format "ENAME works as JOB".

SELECT ENAME || ' works as ' || JOB AS EMPLOYEE_DETAILS
FROM EMP;
-- +------------------+
-- | EMPLOYEE_DETAILS |
-- +------------------+
-- |                0 |
-- |                0 |
-- |                0 |
-- |                0 |
-- |                0 |
-- |                0 |
-- |                0 |
-- |                0 |
-- |                0 |
-- |                0 |
-- |                0 |
-- |                0 |
-- |                0 |
-- |                0 |
-- +------------------+
-- 14 rows in set, 31 warnings (0.00 sec)


-- Q6 WAQTD employee name and
-- salary for employees whose salary is between 1000 and 3000.

SELECT ENAME,
       SAL
FROM EMP
WHERE SAL BETWEEN 1000 AND 3000;
-- +--------+------+
-- | ENAME  | SAL  |
-- +--------+------+
-- | ALLEN  | 1600 |
-- | WARD   | 1250 |
-- | JONES  | 2975 |
-- | MARTIN | 1250 |
-- | BLAKE  | 2850 |
-- | CLARK  | 2450 |
-- | SCOTT  | 3000 |
-- | TURNER | 1500 |
-- | ADAMS  | 1100 |
-- | FORD   | 3000 |
-- | MILLER | 1300 |
-- +--------+------+
-- 11 rows in set (0.00 sec)


-- Q7 WAQTD names of employees whose commission is not null.

SELECT ENAME
FROM EMP
WHERE COMM IS NOT NULL;
-- +--------+
-- | ENAME  |
-- +--------+
-- | ALLEN  |
-- | WARD   |
-- | MARTIN |
-- | TURNER |
-- +--------+
-- 4 rows in set (0.00 sec)


-- Q8 WAQTD names of employees who are not working in department 30

SELECT ENAME
FROM EMP
WHERE DEPTNO <> 30;
-- +--------+
-- | ENAME  |
-- +--------+
-- | SMITH  |
-- | JONES  |
-- | CLARK  |
-- | SCOTT  |
-- | KING   |
-- | ADAMS  |
-- | FORD   |
-- | MILLER |
-- +--------+
-- 8 rows in set (0.00 sec)


-- Q9 WAQTD employee name and annual salary for
-- employees whose salary is greater than or equal to 1500.

SELECT ENAME,
       SAL * 12 AS ANNUAL_SALARY
FROM EMP
WHERE SAL >= 1500;
-- +--------+---------------+
-- | ENAME  | ANNUAL_SALARY |
-- +--------+---------------+
-- | ALLEN  |         19200 |
-- | JONES  |         35700 |
-- | BLAKE  |         34200 |
-- | CLARK  |         29400 |
-- | SCOTT  |         36000 |
-- | KING   |         60000 |
-- | TURNER |         18000 |
-- | FORD   |         36000 |
-- +--------+---------------+
-- 8 rows in set (0.00 sec)


-- Q10 WAQTD names of employees working as MANAGER or ANALYST.

SELECT ENAME
FROM EMP
WHERE JOB IN ('MANAGER', 'ANALYST');
-- +-------+
-- | ENAME |
-- +-------+
-- | JONES |
-- | BLAKE |
-- | CLARK |
-- | SCOTT |
-- | FORD  |
-- +-------+
-- 5 rows in set (0.00 sec)


-- Q11 WAQTD employee name and salary
-- after deduction of 20% for employees earning more than 2000.

SELECT ENAME,
       SAL * 0.80 AS REDUCED_SALARY
FROM EMP
WHERE SAL > 2000;
-- +-------+----------------+
-- | ENAME | REDUCED_SALARY |
-- +-------+----------------+
-- | JONES |        2380.00 |
-- | BLAKE |        2280.00 |
-- | CLARK |        1960.00 |
-- | SCOTT |        2400.00 |
-- | KING  |        4000.00 |
-- | FORD  |        2400.00 |
-- +-------+----------------+
-- 6 rows in set (0.00 sec)


-- Q12 WAQTD names of employees whose names start with 'S'.

SELECT ENAME
FROM EMP
WHERE ENAME LIKE 'S%';
-- +-------+
-- | ENAME |
-- +-------+
-- | SMITH |
-- | SCOTT |
-- +-------+
-- 2 rows in set (0.00 sec)


-- Q13 WAQTD names of employees whose names do not start with 'S'.

SELECT ENAME
FROM EMP
WHERE ENAME NOT LIKE 'S%';
-- +--------+
-- | ENAME  |
-- +--------+
-- | ALLEN  |
-- | WARD   |
-- | JONES  |
-- | MARTIN |
-- | BLAKE  |
-- | CLARK  |
-- | KING   |
-- | TURNER |
-- | ADAMS  |
-- | JAMES  |
-- | FORD   |
-- | MILLER |
-- +--------+
-- 12 rows in set (0.00 sec)


-- Q14 WAQTD employee name and
-- department number for employees working in department 10 or 20

SELECT ENAME,
       DEPTNO
FROM EMP
WHERE DEPTNO IN (10, 20);
-- +--------+--------+
-- | ENAME  | DEPTNO |
-- +--------+--------+
-- | SMITH  |     20 |
-- | JONES  |     20 |
-- | CLARK  |     10 |
-- | SCOTT  |     20 |
-- | KING   |     10 |
-- | ADAMS  |     20 |
-- | FORD   |     20 |
-- | MILLER |     10 |
-- +--------+--------+
-- 8 rows in set (0.00 sec)


-- Q15 WAQTD employee name and salary for
-- employees whose salary is not between 1000 and 3000.

SELECT ENAME,
       SAL
FROM EMP
WHERE SAL NOT BETWEEN 1000 AND 3000;
-- +-------+------+
-- | ENAME | SAL  |
-- +-------+------+
-- | SMITH |  800 |
-- | KING  | 5000 |
-- | JAMES |  950 |
-- +-------+------+
-- 3 rows in set (0.00 sec)
