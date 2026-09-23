-- =====================================================
-- 19_Natural_Join.sql
-- Topic: NATURAL JOIN
-- Note: NATURAL JOIN automatically joins columns having
-- the same name in both tables. In EMP and DEPT tables,
-- the common column is DEPTNO.
-- =====================================================

# Definition: It behaves as INNER JOIN if there is a relation between the given
# two tables , else it behaves as CROSS JOIN

-- -----------------------------------------------------
-- mysql> 1. WAQTD employee name and department name.
-- -----------------------------------------------------

SELECT ENAME, DNAME
FROM EMP
NATURAL JOIN DEPT;
-- +--------+------------+
-- | ENAME  | DNAME      |
-- +--------+------------+
-- | SMITH  | RESEARCH   |
-- | ALLEN  | SALES      |
-- | WARD   | SALES      |
-- | JONES  | RESEARCH   |
-- | MARTIN | SALES      |
-- | BLAKE  | SALES      |
-- | CLARK  | ACCOUNTING |
-- | SCOTT  | RESEARCH   |
-- | KING   | ACCOUNTING |
-- | TURNER | SALES      |
-- | ADAMS  | RESEARCH   |
-- | JAMES  | SALES      |
-- | FORD   | RESEARCH   |
-- | MILLER | ACCOUNTING |
-- +--------+------------+

-- -----------------------------------------------------
-- q2 WAQTD employee name, salary and department location.
-- -----------------------------------------------------

SELECT ENAME, SAL, LOC
FROM EMP
NATURAL JOIN DEPT;
-- +--------+------+----------+
-- | ENAME  | SAL  | LOC      |
-- +--------+------+----------+
-- | SMITH  |  800 | DALLAS   |
-- | ALLEN  | 1600 | CHICAGO  |
-- | WARD   | 1250 | CHICAGO  |
-- | JONES  | 2975 | DALLAS   |
-- | MARTIN | 1250 | CHICAGO  |
-- | BLAKE  | 2850 | CHICAGO  |
-- | CLARK  | 2450 | NEW YORK |
-- | SCOTT  | 3000 | DALLAS   |
-- | KING   | 5000 | NEW YORK |
-- | TURNER | 1500 | CHICAGO  |
-- | ADAMS  | 1100 | DALLAS   |
-- | JAMES  |  950 | CHICAGO  |
-- | FORD   | 3000 | DALLAS   |
-- | MILLER | 1300 | NEW YORK |
-- +--------+------+----------+

-- -----------------------------------------------------
-- q3 WAQTD employee name and department number.
-- -----------------------------------------------------

SELECT ENAME, DEPTNO
FROM EMP
NATURAL JOIN DEPT;
-- +--------+--------+
-- | ENAME  | DEPTNO |
-- +--------+--------+
-- | SMITH  |     20 |
-- | ALLEN  |     30 |
-- | WARD   |     30 |
-- | JONES  |     20 |
-- | MARTIN |     30 |
-- | BLAKE  |     30 |
-- | CLARK  |     10 |
-- | SCOTT  |     20 |
-- | KING   |     10 |
-- | TURNER |     30 |
-- | ADAMS  |     20 |
-- | JAMES  |     30 |
-- | FORD   |     20 |
-- | MILLER |     10 |
-- +--------+--------+

-- -----------------------------------------------------
-- q4 WAQTD all employees working in SALES department.
-- -----------------------------------------------------

SELECT ENAME
FROM EMP
NATURAL JOIN DEPT
WHERE DNAME = 'SALES';
-- +--------+
-- | ENAME  |
-- +--------+
-- | ALLEN  |
-- | WARD   |
-- | MARTIN |
-- | BLAKE  |
-- | TURNER |
-- | JAMES  |
-- +--------+

-- -----------------------------------------------------
-- q5 WAQTD employee name and salary of employees working in DALLAS.
-- -----------------------------------------------------

SELECT ENAME, SAL
FROM EMP
NATURAL JOIN DEPT
WHERE LOC = 'DALLAS';
-- +-------+------+
-- | ENAME | SAL  |
-- +-------+------+
-- | SMITH |  800 |
-- | JONES | 2975 |
-- | SCOTT | 3000 |
-- | ADAMS | 1100 |
-- | FORD  | 3000 |
-- +-------+------+

-- -----------------------------------------------------
-- q6 WAQTD employee name, job and department name.
-- -----------------------------------------------------

SELECT ENAME, JOB, DNAME
FROM EMP
NATURAL JOIN DEPT;
-- +--------+-----------+------------+
-- | ENAME  | JOB       | DNAME      |
-- +--------+-----------+------------+
-- | SMITH  | CLERK     | RESEARCH   |
-- | ALLEN  | SALESMAN  | SALES      |
-- | WARD   | SALESMAN  | SALES      |
-- | JONES  | MANAGER   | RESEARCH   |
-- | MARTIN | SALESMAN  | SALES      |
-- | BLAKE  | MANAGER   | SALES      |
-- | CLARK  | MANAGER   | ACCOUNTING |
-- | SCOTT  | ANALYST   | RESEARCH   |
-- | KING   | PRESIDENT | ACCOUNTING |
-- | TURNER | SALESMAN  | SALES      |
-- | ADAMS  | CLERK     | RESEARCH   |
-- | JAMES  | CLERK     | SALES      |
-- | FORD   | ANALYST   | RESEARCH   |
-- | MILLER | CLERK     | ACCOUNTING |
-- +--------+-----------+------------+

-- -----------------------------------------------------
-- q7 WAQTD department name and number of employees in each department.
-- -----------------------------------------------------

SELECT DNAME, COUNT(*) AS EMP_COUNT
FROM EMP
NATURAL JOIN DEPT
GROUP BY DNAME;
-- +------------+-----------+
-- | DNAME      | EMP_COUNT |
-- +------------+-----------+
-- | RESEARCH   |         5 |
-- | SALES      |         6 |
-- | ACCOUNTING |         3 |
-- +------------+-----------+

-- -----------------------------------------------------
-- q8 WAQTD employee name and department name for employees earning more than 2000
-- -----------------------------------------------------

SELECT ENAME, DNAME
FROM EMP
NATURAL JOIN DEPT
WHERE SAL > 2000;
-- +-------+------------+
-- | ENAME | DNAME      |
-- +-------+------------+
-- | JONES | RESEARCH   |
-- | BLAKE | SALES      |
-- | CLARK | ACCOUNTING |
-- | SCOTT | RESEARCH   |
-- | KING  | ACCOUNTING |
-- | FORD  | RESEARCH   |
-- +-------+------------+

-- -----------------------------------------------------
-- q9 WAQTD employee name and location of employees working as MANAGER.
-- -----------------------------------------------------

SELECT ENAME, LOC
FROM EMP
NATURAL JOIN DEPT
WHERE JOB = 'MANAGER';
-- +-------+----------+
-- | ENAME | LOC      |
-- +-------+----------+
-- | CLARK | NEW YORK |
-- | JONES | DALLAS   |
-- | BLAKE | CHICAGO  |
-- +-------+----------+

-- -----------------------------------------------------
-- q10 WAQTD employee name, salary and department name of employees hired after 1981.
-- -----------------------------------------------------

SELECT ENAME, SAL, DNAME
FROM EMP
NATURAL JOIN DEPT
WHERE HIREDATE > '1981-12-31';
-- +--------+------+------------+
-- | ENAME  | SAL  | DNAME      |
-- +--------+------+------------+
-- | SCOTT  | 3000 | RESEARCH   |
-- | ADAMS  | 1100 | RESEARCH   |
-- | MILLER | 1300 | ACCOUNTING |
-- +--------+------+------------+
