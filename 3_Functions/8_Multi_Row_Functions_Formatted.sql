-- Q1 WAQTD maximum salary given to a manager .
SELECT MAX(SAL) 
FROM EMP
WHERE JOB = 'MANAGER';
-- +----------+
-- | MAX(SAL) |
-- +----------+
-- |     2975 |
-- +----------+
-- Q2 WAQTD Total salary given to dept 10
SELECT SUM(SAL)
FROM EMP
WHERE DEPTNO = 10;
-- +----------+
-- | SUM(SAL) |
-- +----------+
-- |     8750 |
-- +----------+
-- Q3 WAQTD number of employees earing more than 1500 in dept 20
SELECT COUNT(*)
FROM EMP
WHERE SAL > 1500 AND DEPTNO = 20;
-- +----------+
-- | COUNT(*) |
-- +----------+
-- |        3 |
-- +----------+
-- Q4  WAQTD number of employee having 'E' in their names
SELECT COUNT(*)
FROM EMP
WHERE ENAME LIKE '%E%';
-- +----------+
-- | COUNT(*) |
-- +----------+
-- |        6 |
-- +----------+
-- Q5 WAQTD minimum salary given to the employees working as clerk
-- in Dept 10 or 20 .
SELECT MIN(SAL)
FROM EMP
WHERE JOB = 'CLERK'
AND DEPTNO IN (10, 20);
-- +----------+
-- | MIN(SAL) |
-- +----------+
-- |     NULL |
-- +----------+
-- Q6 WAQTD number of employees hired after 1982 and before 1985
-- into Dept 10 or 30 .
SELECT COUNT(*)
FROM EMP
WHERE HIREDATE > '1982-12-31' AND HIREDATE < '1985-01-01' AND DEPTNO IN (10,30);
-- +----------+
-- | COUNT(*) |
-- +----------+
-- |        0 |
-- +----------+
-- Q7 WAQTD number of employees getting commission .
SELECT COUNT(*)
FROM EMP
WHERE COMM IS NOT NULL;
-- +----------+
-- | COUNT(*) |
-- +----------+
-- |        4 |
-- +----------+
-- METHOD 2
SELECT COUNT(COMM)
FROM EMP;
-- +-------------+
-- | COUNT(COMM) |
-- +-------------+
-- |           4 |
-- +-------------+
-- Q8 WAQTD maximum salary given to employees if the emp has
-- character 'S' in the name and works as a Manager in dept 10 with as
-- salary of more than 1800 .
SELECT MAX(SAL)
FROM EMP
WHERE ENAME LIKE '%S%' AND JOB = 'MANAGER' AND DEPTNO = 10 AND SAL > 1800;
-- +----------+
-- | MAX(SAL) |
-- +----------+
-- |     NULL |
-- +----------+
-- Q9 WAQTD number of employees working in dept 10 or 30 and
-- getting commission without the salary .
SELECT COUNT(*)
FROM EMP
WHERE DEPTNO IN (10, 30)
AND COMM IS NOT NULL
AND SAL IS NULL;
-- +----------+
-- | COUNT(*) |
-- +----------+
-- |        0 |
-- +----------+
-- Q10 WAQTD maximum salary given to a manager working in dept 20
-- and also his comm must be greater than his salary .
SELECT MAX(SAL)
FROM EMP
WHERE JOB = 'MANAGER' AND DEPTNO = 20 AND COMM > SAL;
-- +----------+
-- | MAX(SAL) |
-- +----------+
-- |     NULL |
-- +----------+
/*                                                                ASSIGNMENT ON MULTI-ROW FUNCTIONS                                                            */
-- Q1 WAQTD NUMBER OF EMPLOYEES GETTING SALARY LESS
-- THAN 2000 IN DEPTNO 10
SELECT COUNT(*)
FROM EMP
WHERE SAL < 2000 AND DEPTNO = 10;
-- +----------+
-- | COUNT(*) |
-- +----------+
-- |        1 |
-- +----------+
-- Q2 WAQTD TOTAL SALARY NEEDED TO PAY EMPLOYEES
-- WORKING AS CLERK
SELECT SUM(SAL)
FROM EMP
WHERE JOB = 'CLERK';
-- +----------+
-- | SUM(SAL) |
-- +----------+
-- |     4150 |
-- +----------+
-- Q3 WAQTD AVERAGE SALARY NEEDED TO PAY ALL
-- EMPLOYEES
SELECT AVG(SAL)
FROM EMP
;
-- +-----------+
-- | AVG(SAL)  |
-- +-----------+
-- | 2073.2143 |
-- +-----------+
-- Q4 WAQTD NUMBER OF EMPLOYEES HAVING 'A' AS THEIR
-- FIRST CHARACTER
SELECT COUNT(*)
FROM EMP
WHERE ENAME LIKE 'A%';
-- +----------+
-- | COUNT(*) |
-- +----------+
-- |        2 |
-- +----------+
-- 05 WAQTD NUMBER OF EMPLOYEES WORKING AS CLERK OR
-- MANAGER
SELECT COUNT(*)
FROM EMP
WHERE JOB = 'CLERK' OR JOB LIKE 'MANAGER';
-- +----------+
-- | COUNT(*) |
-- +----------+
-- |        7 |
-- +----------+
-- Q6 WAQTD TOTAL SALARY NEEDED TO PAY EMPLOYEES
-- HIRED IN FEB
SELECT SUM(SAL)
FROM EMP
WHERE HIREDATE LIKE '____-02-%';
-- +----------+
-- | SUM(SAL) |
-- +----------+
-- |     2850 |
-- +----------+
-- METHOD - 2
SELECT SUM(SAL)
FROM EMP
WHERE EXTRACT(MONTH FROM HIREDATE) = 2;
-- +----------+
-- | SUM(SAL) |
-- +----------+
-- |     2850 |
-- +----------+
-- Q7 WAQTD NUMBER OF EMPLOYEES REPORTING TO 7839 (MGR)
SELECT COUNT(*)
FROM EMP
WHERE MGR = 7839;
-- +----------+
-- | COUNT(*) |
-- +----------+
-- |        3 |
-- +----------+
-- Q8 WAQTD NUMBER OF EMPLOYEES GETTING COMISSION IN
-- DEPTNO 30
SELECT COUNT(*)
FROM EMP
WHERE COMM IS NOT NULL AND DEPTNO = 30;
-- +----------+
-- | COUNT(*) |
-- +----------+
-- |        4 |
-- +----------+
-- Q9 WAQTD AVG SAL , TOTAL SAL , NUMBER OF EMPS AND
-- MAXIMUM SALARY GIVEN TO EMPLOYEES WORKING AS
-- PERSIDENT
SELECT AVG(SAL), SUM(SAL), COUNT(*), MAX(SAL)
FROM EMP
WHERE JOB = 'PRESIDENT';
-- +-----------+----------+----------+----------+
-- | AVG(SAL)  | SUM(SAL) | COUNT(*) | MAX(SAL) |
-- +-----------+----------+----------+----------+
-- | 5000.0000 |     5000 |        1 |     5000 |
-- +-----------+----------+----------+----------+
-- Q10 WAQTD NUMBER OF EMPLOYEES HAVING 'A' IN THEIR
-- NAMES 
SELECT COUNT(*)
FROM EMP
WHERE ENAME LIKE '%A%';
-- +----------+
-- | COUNT(*) |
-- +----------+
-- |        7 |
-- +----------+
-- Q11 WAQTD NUMBER OF EMPS AND TOTAL SALARY NEEDED
-- TO PAY THE EMPLOYEES WHO HAVE 2 CONSICUTIVE L's IN
-- THEIR NAMES
SELECT COUNT(*), SUM(SAL)
FROM EMP
WHERE ENAME LIKE '%LL%';
-- +----------+----------+
-- | COUNT(*) | SUM(SAL) |
-- +----------+----------+
-- |        2 |     2900 |
-- +----------+----------+
-- Q12 WAQTD NUMBER OF DEPARTMENTS PRESENT IN
-- EMPLOYEE TABLE
SELECT COUNT(DISTINCT DEPTNO)
FROM EMP;
-- +------------------------+
-- | COUNT(DISTINCT DEPTNO) |
-- +------------------------+
-- |                      3 |
-- +------------------------+
-- Q13 WAQTD NUMBER OF EMPLOYEES HAVING CHARACTER 'Z'
-- IN THEIR NAMES
SELECT COUNT(*)
FROM EMP
WHERE ENAME LIKE '%Z%';
-- +----------+
-- | COUNT(*) |
-- +----------+
-- |        0 |
-- +----------+
-- Q14 WAQTD NUMBER OF EMPLOYEES HAVING '$' IN THEIR
-- NAMES 
SELECT COUNT(EMPNO)
FROM EMP
WHERE ENAME LIKE '%$%';
-- +--------------+
-- | COUNT(EMPNO) |
-- +--------------+
-- |            0 |
-- +--------------+
-- Q15 WAQTD TOTAL SALARY GIVEN TO EMPLOYEES WORKING
-- AS CLERK IN DEPT 30
SELECT SUM(SAL)
FROM EMP
WHERE JOB = 'CLERK' AND DEPTNO = 30;
-- +----------+
-- | SUM(SAL) |
-- +----------+
-- |      950 |
-- +----------+
-- Q16 WAQTD MAXIMUM SALARY GIVEN TO THE EMPLOYEES
-- WORKING AS ANALYST 
SELECT MAX(SAL)
FROM EMP
WHERE JOB = 'ANALYST';
-- +----------+
-- | MAX(SAL) |
-- +----------+
-- |     3000 |
-- +----------+
-- Q17 WAQTD NUMBER OF DISTINCT SALARIES PRESENT IN
-- EMPLOYEE TABLE 
SELECT COUNT(DISTINCT SAL)
FROM EMP;
-- +---------------------+
-- | COUNT(DISTINCT SAL) |
-- +---------------------+
-- |                  12 |
-- +---------------------+
-- Q18 WAQTD NUMBER OF JOBS PRESENT IN EMPLOYEE TABLE
SELECT COUNT(DISTINCT JOB)
FROM EMP;
-- +---------------------+
-- | COUNT(DISTINCT JOB) |
-- +---------------------+
-- |                   5 |
-- +---------------------+
-- Q19 WAQTD AVG SALARY GIVEN TO THE CLERK 
SELECT AVG(SAL)
FROM EMP
WHERE JOB = 'CLERK';
-- +-----------+
-- | AVG(SAL)  |
-- +-----------+
-- | 1037.5000 |
-- +-----------+
-- Q20 WAQTD MINIMUM SALARY GIVEN TO THE EMPLOYEES
-- WHO WORK IN DEPT 10 AS MANAGER OR A CLERK 
SELECT MIN(SAL)
FROM EMP
WHERE DEPTNO = 10 AND JOB IN ('MANAGER', 'CLERK');
-- +----------+
-- | MIN(SAL) |
-- +----------+
-- |     1300 |
-- +----------+