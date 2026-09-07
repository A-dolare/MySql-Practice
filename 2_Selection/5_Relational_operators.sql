-- =====================================================
-- RELATIONAL OPERATORS
-- SCOTT SCHEMA
-- =====================================================

-- =====================================================
-- EQUAL TO (=)
-- =====================================================

-- Q1
-- WAQTD details of the employee whose name is SMITH.

SELECT *
FROM EMP
WHERE ENAME = 'SMITH';

-- +-------+-------+-------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB   | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+-------+------+------------+------+------+--------+
-- |  7369 | SMITH | CLERK | 7902 | 1980-12-17 |  800 | NULL |     20 |
-- +-------+-------+-------+------+------------+------+------+--------+
-- 1 row in set (0.00 sec)

-- Q2
-- WAQTD names and salaries of employees earning exactly 3000.

SELECT ENAME, SAL
FROM EMP
WHERE SAL = 3000;

-- +-------+------+
-- | ENAME | SAL  |
-- +-------+------+
-- | SCOTT | 3000 |
-- | FORD  | 3000 |
-- +-------+------+
-- 2 rows in set (0.00 sec)

-- Q3
-- WAQTD names and jobs of employees working as MANAGER.

SELECT ENAME, JOB
FROM EMP
WHERE JOB = 'MANAGER';

-- +-------+---------+
-- | ENAME | JOB     |
-- +-------+---------+
-- | JONES | MANAGER |
-- | BLAKE | MANAGER |
-- | CLARK | MANAGER |
-- +-------+---------+
-- 3 rows in set (0.00 sec)

-- Q4
-- WAQTD details of employees working in department 10.

SELECT *
FROM EMP
WHERE DEPTNO = 10;

-- +-------+--------+-----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+-----------+------+------------+------+------+--------+
-- |  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |
-- |  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- |  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300 | NULL |     10 |
-- +-------+--------+-----------+------+------------+------+------+--------+
-- 3 rows in set (0.00 sec)

-- =====================================================
-- GREATER THAN (>)
-- =====================================================

-- Q5
-- WAQTD names and salaries of employees earning more than 2000.

SELECT ENAME, SAL
FROM EMP
WHERE SAL > 2000;

-- +-------+------+
-- | ENAME | SAL  |
-- +-------+------+
-- | JONES | 2975 |
-- | BLAKE | 2850 |
-- | CLARK | 2450 |
-- | SCOTT | 3000 |
-- | KING  | 5000 |
-- | FORD  | 3000 |
-- +-------+------+
-- 6 rows in set (0.00 sec)

-- Q6
-- WAQTD names and hire dates of employees hired after 01-JAN-1981.

SELECT ENAME, HIREDATE
FROM EMP
WHERE HIREDATE > '1981-01-01';

-- +--------+------------+
-- | ENAME  | HIREDATE   |
-- +--------+------------+
-- | ALLEN  | 1981-02-20 |
-- | WARD   | 1981-02-22 |
-- | JONES  | 1981-04-02 |
-- | MARTIN | 1981-09-28 |
-- | BLAKE  | 1981-05-01 |
-- | CLARK  | 1981-06-09 |
-- | SCOTT  | 1982-12-09 |
-- | KING   | 1981-11-17 |
-- | ADAMS  | 1983-01-12 |
-- | JAMES  | 1981-12-03 |
-- | FORD   | 1981-12-03 |
-- | MILLER | 1982-01-23 |
-- +--------+------------+
-- 12 rows in set (0.00 sec)

-- Q7
-- WAQTD names and commissions of employees receiving commission greater than 300.

SELECT ENAME, COMM
FROM EMP
WHERE COMM > 300;

-- +--------+------+
-- | ENAME  | COMM |
-- +--------+------+
-- | WARD   |  500 |
-- | MARTIN | 1400 |
-- +--------+------+
-- 2 rows in set (0.00 sec)

-- =====================================================
-- LESS THAN (<)
-- =====================================================

-- Q8
-- WAQTD names and salaries of employees earning less than 1500.

SELECT ENAME, SAL
FROM EMP
WHERE SAL < 1500;

-- +--------+------+
-- | ENAME  | SAL  |
-- +--------+------+
-- | SMITH  |  800 |
-- | WARD   | 1250 |
-- | MARTIN | 1250 |
-- | ADAMS  | 1100 |
-- | JAMES  |  950 |
-- | MILLER | 1300 |
-- +--------+------+
-- 6 rows in set (0.00 sec)

-- Q9
-- WAQTD details of employees whose employee number is less than 7600.

SELECT *
FROM EMP
WHERE EMPNO < 7600;

-- +-------+-------+----------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+----------+------+------------+------+------+--------+
-- |  7369 | SMITH | CLERK    | 7902 | 1980-12-17 |  800 | NULL |     20 |
-- |  7499 | ALLEN | SALESMAN | 7698 | 1981-02-20 | 1600 |  300 |     30 |
-- |  7521 | WARD  | SALESMAN | 7698 | 1981-02-22 | 1250 |  500 |     30 |
-- |  7566 | JONES | MANAGER  | 7839 | 1981-04-02 | 2975 | NULL |     20 |
-- +-------+-------+----------+------+------------+------+------+--------+
-- 4 rows in set (0.00 sec)

-- =====================================================
-- GREATER THAN OR EQUAL TO (>=)
-- =====================================================

-- Q10
-- WAQTD names, jobs and salaries of employees earning greater than or equal to 3000.

SELECT ENAME, JOB, SAL
FROM EMP
WHERE SAL >= 3000;

-- +-------+-----------+------+
-- | ENAME | JOB       | SAL  |
-- +-------+-----------+------+
-- | SCOTT | ANALYST   | 3000 |
-- | KING  | PRESIDENT | 5000 |
-- | FORD  | ANALYST   | 3000 |
-- +-------+-----------+------+
-- 3 rows in set (0.00 sec)

-- Q11
-- WAQTD names and department numbers of employees working in department numbers greater than or equal to 20.

SELECT ENAME, DEPTNO
FROM EMP
WHERE DEPTNO >= 20;

-- +--------+--------+
-- | ENAME  | DEPTNO |
-- +--------+--------+
-- | SMITH  |     20 |
-- | ALLEN  |     30 |
-- | WARD   |     30 |
-- | JONES  |     20 |
-- | MARTIN |     30 |
-- | BLAKE  |     30 |
-- | SCOTT  |     20 |
-- | TURNER |     30 |
-- | ADAMS  |     20 |
-- | JAMES  |     30 |
-- | FORD   |     20 |
-- +--------+--------+
-- 11 rows in set (0.00 sec)

-- =====================================================
-- LESS THAN OR EQUAL TO (<=)
-- =====================================================

-- Q12
-- WAQTD names and salaries of employees earning less than or equal to 1250.

SELECT ENAME, SAL
FROM EMP
WHERE SAL <= 1250;

-- +--------+------+
-- | ENAME  | SAL  |
-- +--------+------+
-- | SMITH  |  800 |
-- | WARD   | 1250 |
-- | MARTIN | 1250 |
-- | ADAMS  | 1100 |
-- | JAMES  |  950 |
-- +--------+------+
-- 5 rows in set (0.00 sec)

-- Q13
-- WAQTD names and hire dates of employees hired on or before 31-DEC-1981.

SELECT ENAME, HIREDATE
FROM EMP
WHERE HIREDATE <= '1981-12-31';

-- +--------+------------+
-- | ENAME  | HIREDATE   |
-- +--------+------------+
-- | SMITH  | 1980-12-17 |
-- | ALLEN  | 1981-02-20 |
-- | WARD   | 1981-02-22 |
-- | JONES  | 1981-04-02 |
-- | MARTIN | 1981-09-28 |
-- | BLAKE  | 1981-05-01 |
-- | CLARK  | 1981-06-09 |
-- | KING   | 1981-11-17 |
-- | TURNER | 1980-09-08 |
-- | JAMES  | 1981-12-03 |
-- | FORD   | 1981-12-03 |
-- +--------+------------+
-- 11 rows in set (0.00 sec)

-- =====================================================
-- NOT EQUAL TO (<>) or (!=)
-- =====================================================

-- Q14
-- WAQTD names and jobs of employees who are not working as CLERK.

SELECT ENAME, JOB
FROM EMP
WHERE JOB <> 'CLERK';

-- +--------+-----------+
-- | ENAME  | JOB       |
-- +--------+-----------+
-- | ALLEN  | SALESMAN  |
-- | WARD   | SALESMAN  |
-- | JONES  | MANAGER   |
-- | MARTIN | SALESMAN  |
-- | BLAKE  | MANAGER   |
-- | CLARK  | MANAGER   |
-- | SCOTT  | ANALYST   |
-- | KING   | PRESIDENT |
-- | TURNER | SALESMAN  |
-- | FORD   | ANALYST   |
-- +--------+-----------+
-- 10 rows in set (0.00 sec)

-- Q15
-- WAQTD names and salaries of employees whose salary is not equal to 3000.

SELECT ENAME, SAL
FROM EMP
WHERE SAL <> 3000;

-- +--------+------+
-- | ENAME  | SAL  |
-- +--------+------+
-- | SMITH  |  800 |
-- | ALLEN  | 1600 |
-- | WARD   | 1250 |
-- | JONES  | 2975 |
-- | MARTIN | 1250 |
-- | BLAKE  | 2850 |
-- | CLARK  | 2450 |
-- | KING   | 5000 |
-- | TURNER | 1500 |
-- | ADAMS  | 1100 |
-- | JAMES  |  950 |
-- | MILLER | 1300 |
-- +--------+------+
-- 12 rows in set (0.00 sec)

-- Q16
-- WAQTD details of employees who are not working in department 10.

SELECT *
FROM EMP
WHERE DEPTNO <> 10;

-- +-------+--------+----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+----------+------+------------+------+------+--------+
-- |  7369 | SMITH  | CLERK    | 7902 | 1980-12-17 |  800 | NULL |     20 |
-- |  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600 |  300 |     30 |
-- |  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250 |  500 |     30 |
-- |  7566 | JONES  | MANAGER  | 7839 | 1981-04-02 | 2975 | NULL |     20 |
-- |  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- |  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 | 2850 | NULL |     30 |
-- |  7788 | SCOTT  | ANALYST  | 7566 | 1982-12-09 | 3000 | NULL |     20 |
-- |  7844 | TURNER | SALESMAN | 7698 | 1980-09-08 | 1500 |    0 |     30 |
-- |  7876 | ADAMS  | CLERK    | 7788 | 1983-01-12 | 1100 | NULL |     20 |
-- |  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 |  950 | NULL |     30 |
-- |  7902 | FORD   | ANALYST  | 7566 | 1981-12-03 | 3000 | NULL |     20 |
-- +-------+--------+----------+------+------------+------+------+--------+
-- 11 rows in set (0.00 sec)

-- =====================================================
-- ASSIGNMENT
-- =====================================================

-- Q1
-- WAQTD name and annual salary of employees earning more than 2500.

SELECT ENAME, SAL * 12 AS ANNUAL_SALARY
FROM EMP
WHERE SAL > 2500;

-- +-------+---------------+
-- | ENAME | ANNUAL_SALARY |
-- +-------+---------------+
-- | JONES |         35700 |
-- | BLAKE |         34200 |
-- | SCOTT |         36000 |
-- | KING  |         60000 |
-- | FORD  |         36000 |
-- +-------+---------------+
-- 5 rows in set (0.00 sec)

-- Q2
-- WAQTD name, salary and salary after a hike of 10% for employees earning less than 2000.

SELECT ENAME,
       SAL,
       SAL * 1.10 AS HIKED_SALARY
FROM EMP
WHERE SAL < 2000;

-- +--------+------+--------------+
-- | ENAME  | SAL  | HIKED_SALARY |
-- +--------+------+--------------+
-- | SMITH  |  800 |       880.00 |
-- | ALLEN  | 1600 |      1760.00 |
-- | WARD   | 1250 |      1375.00 |
-- | MARTIN | 1250 |      1375.00 |
-- | TURNER | 1500 |      1650.00 |
-- | ADAMS  | 1100 |      1210.00 |
-- | JAMES  |  950 |      1045.00 |
-- | MILLER | 1300 |      1430.00 |
-- +--------+------+--------------+
-- 8 rows in set (0.00 sec)

-- Q3
-- WAQTD names and designations of employees who are not MANAGERS.

SELECT ENAME, JOB
FROM EMP
WHERE JOB <> 'MANAGER';

-- +--------+-----------+
-- | ENAME  | JOB       |
-- +--------+-----------+
-- | SMITH  | CLERK     |
-- | ALLEN  | SALESMAN  |
-- | WARD   | SALESMAN  |
-- | MARTIN | SALESMAN  |
-- | SCOTT  | ANALYST   |
-- | KING   | PRESIDENT |
-- | TURNER | SALESMAN  |
-- | ADAMS  | CLERK     |
-- | JAMES  | CLERK     |
-- | FORD   | ANALYST   |
-- | MILLER | CLERK     |
-- +--------+-----------+
-- 11 rows in set (0.00 sec)

-- Q4
-- WAQTD names and annual salaries of employees earning greater than or equal to 2000.

SELECT ENAME,
       SAL * 12 AS ANNUAL_SALARY
FROM EMP
WHERE SAL >= 2000;

-- +-------+---------------+
-- | ENAME | ANNUAL_SALARY |
-- +-------+---------------+
-- | JONES |         35700 |
-- | BLAKE |         34200 |
-- | CLARK |         29400 |
-- | SCOTT |         36000 |
-- | KING  |         60000 |
-- | FORD  |         36000 |
-- +-------+---------------+
-- 6 rows in set (0.00 sec)