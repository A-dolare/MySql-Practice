/* CASE 2:  Whenever the data to be selected and the condition to be
   > executed are present in different tables we use Sub Query .
*/

-- Q1 WAQTD deptno of the employee whose name is Miller

SELECT DEPTNO
FROM EMP
WHERE ENAME = 'MILLER';
-- +--------+
-- | DEPTNO |
-- +--------+
-- |     10 |
-- +--------+

-- Q2 WAQTD dname of the employee whose name is Miller .

SELECT DNAME
FROM DEPT
WHERE DEPTNO = (SELECT DEPTNO
FROM EMP
WHERE ENAME = 'MILLER');
-- +------------+
-- | DNAME      |
-- +------------+
-- | ACCOUNTING |
-- +------------+

-- Q3 WAQTD Location of ADAMS

SELECT LOC
FROM DEPT
WHERE DEPTNO = (SELECT DEPTNO
FROM EMP
WHERE ENAME = 'ADAMS');
-- +--------+
-- | LOC    |
-- +--------+
-- | DALLAS |
-- +--------+

-- Q4 WAQTD names of the employees working in Location DALLAS
SELECT ENAME
FROM EMP
WHERE DEPTNO = (
SELECT DEPTNO
FROM DEPT
WHERE LOC = 'DALLAS'
);
-- +-------+
-- | ENAME |
-- +-------+
-- | SMITH |
-- | JONES |
-- | SCOTT |
-- | ADAMS |
-- | FORD  |
-- +-------+

-- Q5 WAQTD number of employees working in dept D3 .
SELECT COUNT(*)
FROM EMP
WHERE DEPTNO = (
SELECT DEPTNO
FROM DEPT
WHERE DNAME = 'RESEARCH'
);
-- +----------+
-- | COUNT(*) |
-- +----------+
-- |        5 |
-- +----------+

-- Q6 WAQTD ename , sal of all the employee earning more than
-- Scott and working in dept 20 .

SELECT ENAME, SAL
FROM EMP
WHERE DEPTNO = 20 AND SAL > (SELECT SAL
FROM EMP
WHERE ENAME = 'SCOTT');
-- Empty set (0.00 sec)

-- Q7 WAQTD all the details of the employee working as a Manager
-- In the dept Accounting .

SELECT *
FROM EMP
WHERE JOB = 'MANAGER' AND DEPTNO = (SELECT DEPTNO
FROM DEPT
WHERE DNAME = 'ACCOUNTING');
+-------+-------+---------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB     | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
+-------+-------+---------+------+------------+------+------+--------+
-- |  7782 | CLARK | MANAGER | 7839 | 1981-06-09 | 2450 | NULL |     10 |
+-------+-------+---------+------+------------+------+------+--------+

-- Q8 WAQTD all the details of the employee working in the same
-- designation as Miller and works in location New York .

SELECT *
FROM EMP
WHERE JOB = (SELECT JOB
FROM EMP
WHERE ENAME = 'MILLER')
AND DEPTNO = (SELECT DEPTNO
FROM DEPT
WHERE LOC = 'NEW YORK');
-- +-------+--------+-------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB   | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+-------+------+------------+------+------+--------+
-- |  7934 | MILLER | CLERK | 7782 | 1982-01-23 | 1300 | NULL |     10 |
-- +-------+--------+-------+------+------------+------+------+--------+

-- Q9 WAQTD number of employees working as a clerk in the same
-- deptno as SMITH and earning more than KING hired after
-- MARTIN in the location BOSTON .

SELECT COUNT(*)
FROM EMP
WHERE JOB = 'CLERK' AND DEPTNO = (SELECT DEPTNO
FROM EMP
WHERE ENAME = 'SMITH')
AND SAL >  (SELECT SAL
FROM EMP
WHERE ENAME = 'KING')
AND HIREDATE > (SELECT HIREDATE
FROM EMP
WHERE ENAME = 'MARTIN')
AND DEPTNO = (SELECT DEPTNO
FROM DEPT
WHERE LOC = 'BOSTON');
-- +----------+
-- | COUNT(*) |
-- +----------+
-- |        0 |
-- +----------+

-- Q10 WAQTD maximum salary given to a person working in
-- DALLAS .

SELECT MAX(SAL)
FROM EMP
WHERE DEPTNO = (SELECT DEPTNO
FROM DEPT
WHERE LOC = 'DALLAS');
-- +----------+
-- | MAX(SAL) |
-- +----------+
-- |     3000 |
-- +----------+

/*                                                              ASSIGNMENT QUESTIONS ON CASE 2                                                                 */

-- Q21 21.WAQTD DNAME OF THE EMPLOYEES WHOS NAME IS
-- SMITH

SELECT DNAME
FROM DEPT
WHERE DEPTNO = (SELECT DEPTNO
FROM EMP
WHERE ENAME = 'SMITH');
-- +----------+
-- | DNAME    |
-- +----------+
-- | RESEARCH |
-- +----------+

-- Q22 WAQTD DNAME AND LOC OF THE EMPLOYEE WHOS
-- ENAME IS KING

SELECT DNAME, LOC
FROM DEPT
WHERE DEPTNO = (SELECT DEPTNO
FROM EMP
WHERE ENAME = 'KING');
-- +------------+----------+
-- | DNAME      | LOC      |
-- +------------+----------+
-- | ACCOUNTING | NEW YORK |
-- +------------+----------+

-- Q23 WAQTD LOC OF THE EMP WHOS EMPLOYEE NUMBER IS
-- 7902

SELECT LOC
FROM DEPT
WHERE DEPTNO = (SELECT DEPTNO
FROM EMP
WHERE EMPNO = 7902);
-- +--------+
-- | LOC    |
-- +--------+
-- | DALLAS |
-- +--------+

-- Q24 WAQTD DNAME AND LOC ALONG WITH DEPTNO OF THE
-- EMPLOYEE WHOS NAME ENDS WITH 'R'
SELECT DNAME, LOC
FROM DEPT
WHERE DEPTNO IN (SELECT DEPTNO
FROM EMP
WHERE ENAME LIKE '%R');
-- +------------+----------+
-- | DNAME      | LOC      |
-- +------------+----------+
-- | ACCOUNTING | NEW YORK |
-- | SALES      | CHICAGO  |
-- +------------+----------+

-- Q25 WAQTD DNAME OF THE EMPLOYEE WHOS DESIGNATION
-- IS PRESIDENT
SELECT DNAME
FROM DEPT
WHERE DEPTNO IN (
SELECT DEPTNO
FROM EMP
WHERE JOB = 'PRESIDENT'
);
-- +------------+
-- | DNAME      |
-- +------------+
-- | ACCOUNTING |
-- +------------+

-- Q26 WAQTD NAMES OF THE EMPLOYEES WORKING IN
-- ACCOUNTING DEPARTMENT
SELECT ENAME
FROM EMP
WHERE DEPTNO IN (SELECT DEPTNO
FROM DEPT
WHERE DNAME = 'ACCOUNTING');
-- +--------+
-- | ENAME  |
-- +--------+
-- | CLARK  |
-- | KING   |
-- | MILLER |
-- +--------+

-- Q27 WAQTD ENAME AND SALARIES OF THE EMPLOYEES WHO
-- ARE WORKING IN THE LOCATION CHICAGO
SELECT ENAME, SAL
FROM EMP
WHERE DEPTNO IN (SELECT DEPTNO
FROM DEPT
WHERE LOC = 'CHICAGO');
-- +--------+------+
-- | ENAME  | SAL  |
-- +--------+------+
-- | ALLEN  | 1600 |
-- | WARD   | 1250 |
-- | MARTIN | 1250 |
-- | BLAKE  | 2850 |
-- | TURNER | 1500 |
-- | JAMES  |  950 |
-- +--------+------+

-- Q28 WAQTD DETAILS OF THE EMPLOYEES WORKING IN SALES

SELECT *
FROM EMP
WHERE DEPTNO IN (SELECT DEPTNO
FROM DEPT
WHERE DNAME = 'SALES');
-- +-------+--------+----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+----------+------+------------+------+------+--------+
-- |  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600 |  300 |     30 |
-- |  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250 |  500 |     30 |
-- |  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- |  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 | 2850 | NULL |     30 |
-- |  7844 | TURNER | SALESMAN | 7698 | 1980-09-08 | 1500 |    0 |     30 |
-- |  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 |  950 | NULL |     30 |
-- +-------+--------+----------+------+------------+------+------+--------+

-- Q29 WAQTD DETAILS OF THE EMP ALONG WITH ANNUAL
-- SALARY IF EMPLOYEES ARE WORKING IN NEW YORK
SELECT E.*, E.SAL * 12
FROM EMP E
WHERE DEPTNO IN (SELECT DEPTNO
FROM DEPT
WHERE LOC = 'NEW YORK');
-- +-------+--------+-----------+------+------------+------+------+--------+------------+
-- | EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO | E.SAL * 12 |
-- +-------+--------+-----------+------+------------+------+------+--------+------------+
-- |  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |      29400 |
-- |  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |      60000 |
-- |  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300 | NULL |     10 |      15600 |
-- +-------+--------+-----------+------+------------+------+------+--------+------------+

-- Q30 WAQTD NAMES OF EMPLOYEES WORKING IN
-- OPERATIONS DEPARTMENT

SELECT ENAME
FROM EMP
WHERE DEPTNO IN (SELECT DEPTNO
FROM DEPT
WHERE DNAME = 'OPERATIONS');
-- Empty set (0.00 sec)
