-- ============================================================
-- MIXED PRACTICE QUESTIONS: GROUPING AND FILTERING
-- Schema: SCOTT
--
-- Questions are preserved as comments.
-- SQL queries remain executable.
-- Original output tables and row counts are preserved as comments.
-- MySQL command-line prompts (mysql>, ->) have been removed.
-- ============================================================

-- MPQs_ON_GROUP_AND_FILTERING

-- Q1 WAQTD department number and number of employees
-- working in each department where there are at least 3 employees.

SELECT DEPTNO,
       COUNT(*) AS EMP_COUNT
FROM EMP
GROUP BY DEPTNO
HAVING COUNT(*) >= 3;
-- +--------+-----------+
-- | DEPTNO | EMP_COUNT |
-- +--------+-----------+
-- |     20 |         5 |
-- |     30 |         6 |
-- |     10 |         3 |
-- +--------+-----------+
-- 3 rows in set (0.00 sec)


-- Q2 WAQTD job and total salary needed to pay
-- employees in each job where the total salary exceeds 5000

SELECT JOB,
       SUM(SAL) AS TOTAL_SALARY
FROM EMP
GROUP BY JOB
HAVING SUM(SAL) > 5000;
-- +----------+--------------+
-- | JOB      | TOTAL_SALARY |
-- +----------+--------------+
-- | SALESMAN |         5600 |
-- | MANAGER  |         8275 |
-- | ANALYST  |         6000 |
-- +----------+--------------+
-- 3 rows in set (0.00 sec)


-- Q3 WAQTD job and maximum salary of
-- employees in each job where the maximum salary is greater than 2500.

SELECT DEPTNO,
       AVG(SAL) AS AVG_SALARY
FROM EMP
GROUP BY DEPTNO
HAVING AVG(SAL) > 2000;
-- +--------+------------+
-- | DEPTNO | AVG_SALARY |
-- +--------+------------+
-- |     20 |  2175.0000 |
-- |     10 |  2916.6667 |
-- +--------+------------+
-- 2 rows in set (0.00 sec)


-- Q4 WAQTD job and maximum salary of employees in
-- each job where the maximum salary is greater than 2500.


SELECT JOB,
       MAX(SAL) AS MAX_SALARY
FROM EMP
GROUP BY JOB
HAVING MAX(SAL) > 2500;
-- +-----------+------------+
-- | JOB       | MAX_SALARY |
-- +-----------+------------+
-- | MANAGER   |       2975 |
-- | ANALYST   |       3000 |
-- | PRESIDENT |       5000 |
-- +-----------+------------+
-- 3 rows in set (0.00 sec)


-- Q5 WAQTD department number and minimum salary of employees
-- in each department where the minimum salary is greater than 900.

SELECT DEPTNO,
       MIN(SAL) AS MIN_SALARY
FROM EMP
GROUP BY DEPTNO
HAVING MIN(SAL) > 900;
-- +--------+------------+
-- | DEPTNO | MIN_SALARY |
-- +--------+------------+
-- |     30 |        950 |
-- |     10 |       1300 |
-- +--------+------------+
-- 2 rows in set (0.00 sec)


-- Q6 WAQTD number of employees earning more than
-- 1000 in each department where at least 2 such employees exist.

SELECT DEPTNO,
       COUNT(*) AS EMP_COUNT
FROM EMP
WHERE SAL > 1000
GROUP BY DEPTNO
HAVING COUNT(*) >= 2;
-- +--------+-----------+
-- | DEPTNO | EMP_COUNT |
-- +--------+-----------+
-- |     30 |         5 |
-- |     20 |         4 |
-- |     10 |         3 |
-- +--------+-----------+
-- 3 rows in set (0.00 sec)


-- Q7 WAQTD job and total salary of employees
-- earning more than 1200 where the total salary exceeds 4000.

SELECT JOB,
       SUM(SAL) AS TOTAL_SALARY
FROM EMP
WHERE SAL > 1200
GROUP BY JOB
HAVING SUM(SAL) > 4000;
-- +-----------+--------------+
-- | JOB       | TOTAL_SALARY |
-- +-----------+--------------+
-- | SALESMAN  |         5600 |
-- | MANAGER   |         8275 |
-- | ANALYST   |         6000 |
-- | PRESIDENT |         5000 |
-- +-----------+--------------+
-- 4 rows in set (0.00 sec)


-- Q8 WAQTD department number and employee count for departments
-- having at least 2 employees whose names contain the letter 'A'.

SELECT DEPTNO,
       COUNT(*) AS EMP_COUNT
FROM EMP
WHERE ENAME LIKE '%A%'
GROUP BY DEPTNO
HAVING COUNT(*) >= 2;
-- +--------+-----------+
-- | DEPTNO | EMP_COUNT |
-- +--------+-----------+
-- |     30 |         5 |
-- +--------+-----------+
-- 1 row in set (0.00 sec)


-- Q9 WAQTD job and average salary of employees whose salary
--  is greater than 1000, where average salary exceeds 1800.


SELECT JOB,
       AVG(SAL) AS AVG_SALARY
FROM EMP
WHERE SAL > 1000
GROUP BY JOB
HAVING AVG(SAL) > 1800;
-- +-----------+------------+
-- | JOB       | AVG_SALARY |
-- +-----------+------------+
-- | MANAGER   |  2758.3333 |
-- | ANALYST   |  3000.0000 |
-- | PRESIDENT |  5000.0000 |
-- +-----------+------------+
-- 3 rows in set (0.00 sec)


-- Q10 WAQTD department number and total salary of employees
-- working in each department where there are at least 4 employees.

SELECT DEPTNO,
       SUM(SAL) AS TOTAL_SALARY
FROM EMP
GROUP BY DEPTNO
HAVING COUNT(*) >= 4;
-- +--------+--------------+
-- | DEPTNO | TOTAL_SALARY |
-- +--------+--------------+
-- |     20 |        10875 |
-- |     30 |         9400 |
-- +--------+--------------+
-- 2 rows in set (0.00 sec)


-- Q11 WAQTD job and number of employees
--  in each job where at least 2 employees earn more than 1200.

SELECT JOB,
       COUNT(*) AS EMP_COUNT
FROM EMP
WHERE SAL > 1200
GROUP BY JOB
HAVING COUNT(*) >= 2;
-- +----------+-----------+
-- | JOB      | EMP_COUNT |
-- +----------+-----------+
-- | SALESMAN |         4 |
-- | MANAGER  |         3 |
-- | ANALYST  |         2 |
-- +----------+-----------+
-- 3 rows in set (0.00 sec)


-- Q12 WAQTD department number and maximum salary where maximum salary
--  exceeds 2500 and at least 3 employees work in that department.

SELECT DEPTNO,
       MAX(SAL) AS MAX_SALARY
FROM EMP
GROUP BY DEPTNO
HAVING MAX(SAL) > 2500
   AND COUNT(*) >= 3;
-- +--------+------------+
-- | DEPTNO | MAX_SALARY |
-- +--------+------------+
-- |     20 |       3000 |
-- |     30 |       2850 |
-- |     10 |       5000 |
-- +--------+------------+
-- 3 rows in set (0.00 sec)


-- Q13 WAQTD job and minimum salary where minimum salary
-- is less than 1000 and there are at least 2 employees in that job.

SELECT JOB,
       MIN(SAL) AS MIN_SALARY
FROM EMP
GROUP BY JOB
HAVING MIN(SAL) < 1000
   AND COUNT(*) >= 2;
-- +-------+------------+
-- | JOB   | MIN_SALARY |
-- +-------+------------+
-- | CLERK |        800 |
-- +-------+------------+
-- 1 row in set (0.00 sec)


-- Q14 WAQTD department number and average salary of
-- employees earning more than 1000 where average salary exceeds 1500.

SELECT DEPTNO,
       AVG(SAL) AS AVG_SALARY
FROM EMP
WHERE SAL > 1000
GROUP BY DEPTNO
HAVING AVG(SAL) > 1500;
-- +--------+------------+
-- | DEPTNO | AVG_SALARY |
-- +--------+------------+
-- |     30 |  1690.0000 |
-- |     20 |  2518.7500 |
-- |     10 |  2916.6667 |
-- +--------+------------+
-- 3 rows in set (0.00 sec)


-- Q15 WAQTD job and number of employees whose names
-- contain 'A' where at least 2 such employees work in that job.

SELECT JOB,
       COUNT(*) AS EMP_COUNT
FROM EMP
WHERE ENAME LIKE '%A%'
GROUP BY JOB
HAVING COUNT(*) >= 2;
-- +----------+-----------+
-- | JOB      | EMP_COUNT |
-- +----------+-----------+
-- | SALESMAN |         3 |
-- | MANAGER  |         2 |
-- | CLERK    |         2 |
-- +----------+-----------+
-- 3 rows in set (0.00 sec)


-- Q16 WAQTD department number and total salary of employees whose
-- salary is greater than 1000 where the total salary exceeds 5000.

SELECT DEPTNO,
       SUM(SAL) AS TOTAL_SALARY
FROM EMP
WHERE SAL > 1000
GROUP BY DEPTNO
HAVING SUM(SAL) > 5000;
-- +--------+--------------+
-- | DEPTNO | TOTAL_SALARY |
-- +--------+--------------+
-- |     30 |         8450 |
-- |     20 |        10075 |
-- |     10 |         8750 |
-- +--------+--------------+
-- 3 rows in set (0.00 sec)


-- Q17 WAQTD job and average salary where there are at least 3 employees in that job.

SELECT JOB,
       AVG(SAL) AS AVG_SALARY
FROM EMP
GROUP BY JOB
HAVING COUNT(*) >= 3;
-- +----------+------------+
-- | JOB      | AVG_SALARY |
-- +----------+------------+
-- | CLERK    |  1037.5000 |
-- | SALESMAN |  1400.0000 |
-- | MANAGER  |  2758.3333 |
-- +----------+------------+
-- 3 rows in set (0.00 sec)


-- Q18 WAQTD department number and employee count where all employees
-- considered earn more than 1200 and there are at least 2 such employees.

SELECT DEPTNO,
       COUNT(*) AS EMP_COUNT
FROM EMP
WHERE SAL > 1200
GROUP BY DEPTNO
HAVING COUNT(*) >= 2;
-- +--------+-----------+
-- | DEPTNO | EMP_COUNT |
-- +--------+-----------+
-- |     30 |         5 |
-- |     20 |         3 |
-- |     10 |         3 |
-- +--------+-----------+
-- 3 rows in set (0.00 sec)


-- Q19 WAQTD job and total salary of employees whose
--  names contain either 'A' or 'S', where total salary exceeds 3000.

SELECT JOB,
       SUM(SAL) AS TOTAL_SALARY
FROM EMP
WHERE ENAME LIKE '%A%'
   OR ENAME LIKE '%S%'
GROUP BY JOB
HAVING SUM(SAL) > 3000;
-- +----------+--------------+
-- | JOB      | TOTAL_SALARY |
-- +----------+--------------+
-- | SALESMAN |         4100 |
-- | MANAGER  |         8275 |
-- +----------+--------------+
-- 2 rows in set (0.00 sec)


-- Q20 WAQTD department number, employee count and average salary
-- where there are at least 3 employees and average salary exceeds 1500.

SELECT DEPTNO,
       COUNT(*) AS EMP_COUNT,
       AVG(SAL) AS AVG_SALARY
FROM EMP
GROUP BY DEPTNO
HAVING COUNT(*) >= 3
   AND AVG(SAL) > 1500;
-- +--------+-----------+------------+
-- | DEPTNO | EMP_COUNT | AVG_SALARY |
-- +--------+-----------+------------+
-- |     20 |         5 |  2175.0000 |
-- |     30 |         6 |  1566.6667 |
-- |     10 |         3 |  2916.6667 |
-- +--------+-----------+------------+
-- 3 rows in set (0.00 sec)
