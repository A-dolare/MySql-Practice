-- ============================================================
-- MIXED PRACTICE QUESTIONS: PROJECTION
-- Schema: SCOTT
--
-- Each question, its SQL query, and the corresponding output
-- table are preserved from the original file.
-- MySQL command prompts have been removed.
-- Output tables remain comments, so they do not affect execution.
-- ============================================================

-- PROJECTION_MIXED_PRACTICE_QUESTIONS

-- Q1 WAQTD employee name and annual salary of all employees.

SELECT ENAME,
       SAL * 12 AS ANNUAL_SALARY
FROM EMP;
-- +--------+---------------+
-- | ENAME  | ANNUAL_SALARY |
-- +--------+---------------+
-- | SMITH  |          9600 |
-- | ALLEN  |         19200 |
-- | WARD   |         15000 |
-- | JONES  |         35700 |
-- | MARTIN |         15000 |
-- | BLAKE  |         34200 |
-- | CLARK  |         29400 |
-- | SCOTT  |         36000 |
-- | KING   |         60000 |
-- | TURNER |         18000 |
-- | ADAMS  |         13200 |
-- | JAMES  |         11400 |
-- | FORD   |         36000 |
-- | MILLER |         15600 |
-- +--------+---------------+
-- 14 rows in set (0.00 sec)

-- Q2 WAQTD employee name, salary and salary after a hike of 15%.

SELECT ENAME,
       SAL,
       SAL * 1.15 AS HIKED_SALARY
FROM EMP;
-- +--------+------+--------------+
-- | ENAME  | SAL  | HIKED_SALARY |
-- +--------+------+--------------+
-- | SMITH  |  800 |       920.00 |
-- | ALLEN  | 1600 |      1840.00 |
-- | WARD   | 1250 |      1437.50 |
-- | JONES  | 2975 |      3421.25 |
-- | MARTIN | 1250 |      1437.50 |
-- | BLAKE  | 2850 |      3277.50 |
-- | CLARK  | 2450 |      2817.50 |
-- | SCOTT  | 3000 |      3450.00 |
-- | KING   | 5000 |      5750.00 |
-- | TURNER | 1500 |      1725.00 |
-- | ADAMS  | 1100 |      1265.00 |
-- | JAMES  |  950 |      1092.50 |
-- | FORD   | 3000 |      3450.00 |
-- | MILLER | 1300 |      1495.00 |
-- +--------+------+--------------+
-- 14 rows in set (0.00 sec)

-- Q3 WAQTD distinct job designations available in the company.

SELECT DISTINCT JOB
FROM EMP;
-- +-----------+
-- | JOB       |
-- +-----------+
-- | CLERK     |
-- | SALESMAN  |
-- | MANAGER   |
-- | ANALYST   |
-- | PRESIDENT |
-- +-----------+
-- 5 rows in set (0.00 sec)

-- Q4 WAQTD distinct department numbers present in EMP table.

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

-- Q5 WAQTD employee name and half-year salary.

SELECT ENAME,
       SAL * 6 AS HALF_YEAR_SALARY
FROM EMP;
-- +--------+------------------+
-- | ENAME  | HALF_YEAR_SALARY |
-- +--------+------------------+
-- | SMITH  |             4800 |
-- | ALLEN  |             9600 |
-- | WARD   |             7500 |
-- | JONES  |            17850 |
-- | MARTIN |             7500 |
-- | BLAKE  |            17100 |
-- | CLARK  |            14700 |
-- | SCOTT  |            18000 |
-- | KING   |            30000 |
-- | TURNER |             9000 |
-- | ADAMS  |             6600 |
-- | JAMES  |             5700 |
-- | FORD   |            18000 |
-- | MILLER |             7800 |
-- +--------+------------------+
-- 14 rows in set (0.00 sec)

-- Q6 WAQTD employee name, monthly salary and annual bonus of 2000.

SELECT ENAME,
       SAL,
       2000 AS ANNUAL_BONUS
FROM EMP;
-- +--------+------+--------------+
-- | ENAME  | SAL  | ANNUAL_BONUS |
-- +--------+------+--------------+
-- | SMITH  |  800 |         2000 |
-- | ALLEN  | 1600 |         2000 |
-- | WARD   | 1250 |         2000 |
-- | JONES  | 2975 |         2000 |
-- | MARTIN | 1250 |         2000 |
-- | BLAKE  | 2850 |         2000 |
-- | CLARK  | 2450 |         2000 |
-- | SCOTT  | 3000 |         2000 |
-- | KING   | 5000 |         2000 |
-- | TURNER | 1500 |         2000 |
-- | ADAMS  | 1100 |         2000 |
-- | JAMES  |  950 |         2000 |
-- | FORD   | 3000 |         2000 |
-- | MILLER | 1300 |         2000 |
-- +--------+------+--------------+
-- 14 rows in set (0.00 sec)

-- Q7 WAQTD employee name and salary after deduction of 20%.

SELECT ENAME,
       SAL,
       SAL * 0.80 AS SALARY_AFTER_DEDUCTION
FROM EMP;
-- +--------+------+------------------------+
-- | ENAME  | SAL  | SALARY_AFTER_DEDUCTION |
-- +--------+------+------------------------+
-- | SMITH  |  800 |                 640.00 |
-- | ALLEN  | 1600 |                1280.00 |
-- | WARD   | 1250 |                1000.00 |
-- | JONES  | 2975 |                2380.00 |
-- | MARTIN | 1250 |                1000.00 |
-- | BLAKE  | 2850 |                2280.00 |
-- | CLARK  | 2450 |                1960.00 |
-- | SCOTT  | 3000 |                2400.00 |
-- | KING   | 5000 |                4000.00 |
-- | TURNER | 1500 |                1200.00 |
-- | ADAMS  | 1100 |                 880.00 |
-- | JAMES  |  950 |                 760.00 |
-- | FORD   | 3000 |                2400.00 |
-- | MILLER | 1300 |                1040.00 |
-- +--------+------+------------------------+
-- 14 rows in set (0.00 sec)


-- Q8 WAQTD distinct salaries available in EMP table

SELECT DISTINCT SAL
FROM EMP;
-- +------+
-- | SAL  |
-- +------+
-- |  800 |
-- | 1600 |
-- | 1250 |
-- | 2975 |
-- | 2850 |
-- | 2450 |
-- | 3000 |
-- | 5000 |
-- | 1500 |
-- | 1100 |
-- |  950 |
-- | 1300 |
-- +------+
-- 12 rows in set (0.00 sec)


-- Q9 WAQTD all employee details along with annual salary.

SELECT EMPNO,
       ENAME,
       JOB,
       MGR,
       HIREDATE,
       SAL,
       COMM,
       DEPTNO,
       SAL * 12 AS ANNUAL_SALARY
FROM EMP;
-- +-------+--------+-----------+------+------------+------+------+--------+---------------+
-- | EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO | ANNUAL_SALARY |
-- +-------+--------+-----------+------+------------+------+------+--------+---------------+
-- |  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800 | NULL |     20 |          9600 |
-- |  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 |  300 |     30 |         19200 |
-- |  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250 |  500 |     30 |         15000 |
-- |  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL |     20 |         35700 |
-- |  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250 | 1400 |     30 |         15000 |
-- |  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |         34200 |
-- |  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |         29400 |
-- |  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000 | NULL |     20 |         36000 |
-- |  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |         60000 |
-- |  7844 | TURNER | SALESMAN  | 7698 | 1980-09-08 | 1500 |    0 |     30 |         18000 |
-- |  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100 | NULL |     20 |         13200 |
-- |  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950 | NULL |     30 |         11400 |
-- |  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |         36000 |
-- |  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300 | NULL |     10 |         15600 |
-- +-------+--------+-----------+------+------------+------+------+--------+---------------+
-- 14 rows in set (0.00 sec)


-- Q10 WAQTD employee name, salary and salary after monthly hike of 100.

SELECT ENAME,
       SAL,
       SAL + 100 AS REVISED_SALARY
FROM EMP;
-- +--------+------+----------------+
-- | ENAME  | SAL  | REVISED_SALARY |
-- +--------+------+----------------+
-- | SMITH  |  800 |            900 |
-- | ALLEN  | 1600 |           1700 |
-- | WARD   | 1250 |           1350 |
-- | JONES  | 2975 |           3075 |
-- | MARTIN | 1250 |           1350 |
-- | BLAKE  | 2850 |           2950 |
-- | CLARK  | 2450 |           2550 |
-- | SCOTT  | 3000 |           3100 |
-- | KING   | 5000 |           5100 |
-- | TURNER | 1500 |           1600 |
-- | ADAMS  | 1100 |           1200 |
-- | JAMES  |  950 |           1050 |
-- | FORD   | 3000 |           3100 |
-- | MILLER | 1300 |           1400 |
-- +--------+------+----------------+
-- 14 rows in set (0.00 sec)
