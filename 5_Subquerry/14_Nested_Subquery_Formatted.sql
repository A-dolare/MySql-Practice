-- ===============================================================
-- 15_Nested_Subquery.sql
-- Topic: Nested Subqueries (SCOTT Schema)
-- Directly executable MySQL script
-- ===============================================================

-- A nested subquery is a query written inside another query.
-- These examples use MAX(), MIN(), and nested conditions to
-- retrieve nth highest/lowest values and related records.

-- -------------------------------------------------------
-- -- Q1 WAQTD maximum salary given to an employee .
-- -------------------------------------------------------

SELECT MAX(SAL)
FROM EMP;
-- +----------+
-- | MAX(SAL) |
-- +----------+
-- |     5000 |
-- +----------+

-- -------------------------------------------------------
-- -- Q2 WAQTD second maximum salary given to an employee .
-- -------------------------------------------------------

SELECT MAX(SAL)
FROM EMP
WHERE SAL < (SELECT MAX(SAL)
FROM EMP);
-- +----------+
-- | MAX(SAL) |
-- +----------+
-- |     3000 |
-- +----------+

-- -------------------------------------------------------
-- -- Q3 WAQTD 3rd maximum salary .
-- -------------------------------------------------------

SELECT MAX(SAL)
FROM EMP
WHERE SAL < (SELECT MAX(SAL)
FROM EMP
WHERE SAL < (SELECT MAX(SAL)
FROM EMP));
-- +----------+
-- | MAX(SAL) |
-- +----------+
-- |     2975 |
-- +----------+

-- -------------------------------------------------------
-- -- Q4 WAQTD 4th maximum salary .
-- -------------------------------------------------------

SELECT MAX(SAL)
FROM EMP
WHERE SAL < (SELECT MAX(SAL)
FROM EMP
WHERE SAL < (SELECT MAX(SAL)
FROM EMP
WHERE SAL < (SELECT MAX(SAL)
FROM EMP)));
-- +----------+
-- | MAX(SAL) |
-- +----------+
-- |     2850 |
-- +----------+

-- -------------------------------------------------------
-- -- Q5 WAQTD 3 minimum salary .
-- -------------------------------------------------------

SELECT MIN(SAL)
FROM EMP
WHERE SAL > (SELECT MIN(SAL)
FROM EMP
WHERE SAL > (SELECT MIN(SAL)
FROM EMP));
-- +----------+
-- | MIN(SAL) |
-- +----------+
-- |     1100 |
-- +----------+

-- -------------------------------------------------------
-- -- Q6 WAQTD Dept name of the employee getting 2nd Minimum
-- -------------------------------------------------------
-- salary .

SELECT DNAME
FROM DEPT
WHERE DEPTNO IN (SELECT DEPTNO
FROM EMP
WHERE SAL = (SELECT MIN(SAL)
FROM EMP
WHERE SAL > (SELECT MIN(SAL)
FROM EMP)));
-- +-------+
-- | DNAME |
-- +-------+
-- | SALES |
-- +-------+

/*                                                           ASSIGNMENT QUESTIONS ON NESTED SUBQUERY                                                          */

-- -------------------------------------------------------
-- -- Q1 WAQTD 2ND MINIMUM SALARY
-- -------------------------------------------------------

SELECT MIN(SAL)
FROM EMP
WHERE SAL > (SELECT MIN(SAL)
FROM EMP);
-- +----------+
-- | MIN(SAL) |
-- +----------+
-- |      950 |
-- +----------+

-- -------------------------------------------------------
-- -- Q2 WAQTD 5TH MAXIMUM SALARY
-- -------------------------------------------------------

SELECT MAX(SAL)
FROM EMP
WHERE SAL < (SELECT MAX(SAL)
FROM EMP
WHERE SAL < (SELECT MAX(SAL)
FROM EMP
WHERE SAL < (SELECT MAX(SAL)
FROM EMP
WHERE SAL < (SELECT MAX(SAL)
FROM EMP))));
-- +----------+
-- | MAX(SAL) |
-- +----------+
-- |     2450 |
-- +----------+

-- -------------------------------------------------------
-- -- Q3 WAQTD NAME OF THE EMPLOYEE EARNING 3RD
-- -------------------------------------------------------
-- MAXIMUM SALARY

SELECT ENAME
FROM EMP
WHERE SAL = (SELECT MAX(SAL)
FROM EMP
WHERE SAL < (SELECT MAX(SAL)
FROM EMP
WHERE SAL < (SELECT MAX(SAL)
FROM EMP)));
-- +-------+
-- | ENAME |
-- +-------+
-- | JONES |
-- +-------+

-- -------------------------------------------------------
-- -- Q4 WAQTD EMPNO OF THE EMPLOYEE EARNING 3RD
-- -------------------------------------------------------
-- MAXIMUM SALARY

SELECT EMPNO
FROM EMP
WHERE SAL = (SELECT MAX(SAL)
FROM EMP
WHERE SAL < (SELECT MAX(SAL)
FROM EMP
WHERE SAL < (SELECT MAX(SAL)
FROM EMP)));
-- +-------+
-- | EMPNO |
-- +-------+
-- |  7566 |
-- +-------+

-- -------------------------------------------------------
-- -- Q5 WAQTD DEPARTMENT NAME OF AN EMPLOYEE GETTING
-- -------------------------------------------------------
-- 4TH MAX SAL

SELECT DNAME
FROM DEPT
WHERE DEPTNO IN (
SELECT DEPTNO
FROM EMP
WHERE SAL = (
SELECT MAX(SAL)
FROM EMP
WHERE SAL < (
SELECT MAX(SAL)
FROM EMP
WHERE SAL < (
SELECT MAX(SAL)
FROM EMP
WHERE SAL < (
SELECT MAX(SAL)
FROM EMP
)
)
)
)
);
-- +-------+
-- | DNAME |
-- +-------+
-- | SALES |
-- +-------+

-- -------------------------------------------------------
-- -- Q6 WAQTD DETAILS OF THE EMPLOYEE WHO WAS HIRED SECOND EARLIEST
-- -------------------------------------------------------

SELECT *
FROM EMP
WHERE HIREDATE = (SELECT MIN(HIREDATE)
FROM EMP
WHERE HIREDATE > (SELECT MIN(HIREDATE)
FROM EMP));
-- +-------+-------+-------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB   | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+-------+------+------------+------+------+--------+
-- |  7369 | SMITH | CLERK | 7902 | 1980-12-17 |  800 | NULL |     20 |
-- +-------+-------+-------+------+------------+------+------+--------+

-- -------------------------------------------------------
-- -- Q7 WAQTD NAME OF THE EMPLOYEE HIRED BEFORE THE
-- -------------------------------------------------------
-- LAST EMPLOYEE

SELECT ENAME
FROM EMP
WHERE HIREDATE = (SELECT MAX(HIREDATE)
FROM EMP
WHERE HIREDATE < (SELECT MAX(HIREDATE)
FROM EMP));
-- +-------+
-- | ENAME |
-- +-------+
-- | SCOTT |
-- +-------+

-- -------------------------------------------------------
-- -- Q8 WAQTD LOC OF THE EMPLOYEE WHO WAS HIRED FIRST
-- -------------------------------------------------------

SELECT LOC
FROM DEPT
WHERE DEPTNO IN (SELECT DEPTNO
FROM EMP
WHERE HIREDATE = (SELECT MIN(HIREDATE)
FROM EMP));
-- +---------+
-- | LOC     |
-- +---------+
-- | CHICAGO |
-- +---------+

-- -------------------------------------------------------
-- -- Q9 WAQTD DETAILS OF THE EMPLOYEE EARNING 7TH
-- -------------------------------------------------------
-- MINIMUM SALARY

SELECT *
FROM EMP
WHERE SAL = (SELECT MIN(SAL)
FROM EMP
WHERE SAL > (SELECT MIN(SAL)
FROM EMP
WHERE SAL > (SELECT MIN(SAL)
FROM EMP
WHERE SAL > (SELECT MIN(SAL)
FROM EMP
WHERE SAL > (SELECT MIN(SAL)
FROM EMP
WHERE SAL > (SELECT MIN(SAL)
FROM EMP))))));
-- +-------+--------+----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+----------+------+------------+------+------+--------+
-- |  7844 | TURNER | SALESMAN | 7698 | 1980-09-08 | 1500 |    0 |     30 |
-- +-------+--------+----------+------+------------+------+------+--------+

-- -------------------------------------------------------
-- -- Q10 WAQTD DNAME OF EMPLOYEE GETTING 2ND MAXIMUM
-- -------------------------------------------------------
-- SALARY
SELECT DNAME
FROM DEPT
WHERE DEPTNO IN (SELECT DEPTNO
FROM EMP
WHERE SAL = (SELECT MAX(SAL)
FROM EMP
WHERE SAL < (SELECT MAX(SAL)
FROM EMP)));
-- +----------+
-- | DNAME    |
-- +----------+
-- | RESEARCH |
-- +----------+
