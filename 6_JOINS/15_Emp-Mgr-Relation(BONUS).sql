-- =====================================================
-- FORMATTED VERSION: Emp-Mgr-Relation(1).sql
-- Cleaned for direct execution in MySQL
-- =====================================================

-- Q1 WAQTD name of Allen's manager .

SELECT ENAME
FROM EMP
WHERE EMPNO = (SELECT MGR
FROM EMP
WHERE ENAME = 'ALLEN');
-- +-------+
-- | ENAME |
-- +-------+
-- | BLAKE |
-- +-------+

-- Q2 WAQTD name of SMITH's manager .

SELECT ENAME
FROM EMP
WHERE EMPNO = (SELECT MGR
FROM EMP
WHERE ENAME = 'SMITH');
-- +-------+
-- | ENAME |
-- +-------+
-- | FORD  |
-- +-------+

-- Q3 WAQTD name of SMITH's manager's manager .

SELECT ENAME
FROM EMP
WHERE EMPNO = (SELECT MGR
FROM EMP
WHERE EMPNO = (SELECT MGR
FROM EMP
WHERE ENAME = 'SMITH'));
-- +-------+
-- | ENAME |
-- +-------+
-- | JONES |
-- +-------+

-- Q4 WAQTD dname of King's Manager .

SELECT DNAME
FROM DEPT
WHERE DEPTNO = (SELECT DEPTNO
FROM EMP
WHERE EMPNO = (SELECT MGR
FROM EMP
WHERE ENAME = 'KING'));

-- Q5 WAQTD Location of Adams's manager's manager .

SELECT LOC
FROM DEPT
WHERE DEPTNO = (SELECT DEPTNO
FROM EMP
WHERE EMPNO = (SELECT MGR
FROM EMP
WHERE EMPNO = (SELECT MGR
FROM EMP
WHERE ENAME = 'ADAMS')));
-- +--------+
-- | LOC    |
-- +--------+
-- | DALLAS |
-- +--------+

/*                                                               Case-2:
*/
-- Q6 WAQTD Names of the employees reporting to KING

SELECT ENAME
FROM EMP
WHERE MGR = (SELECT EMPNO
FROM EMP
WHERE ENAME = 'KING');
-- +-------+
-- | ENAME |
-- +-------+
-- | JONES |
-- | BLAKE |
-- | CLARK |
-- +-------+

-- Q7 WAQTD Name and salary given to the employees reporting To James .

SELECT ENAME, SAL
FROM EMP
WHERE MGR = (SELECT EMPNO
FROM EMP
WHERE ENAME = 'JAMES');

-- Q8 WAQTD dname of the employee reporting to President .

SELECT DNAME
FROM DEPT
WHERE DEPTNO IN (SELECT DEPTNO
FROM EMP
WHERE MGR = (SELECT EMPNO
FROM EMP
WHERE JOB = 'PRESIDENT'));
-- +------------+
-- | DNAME      |
-- +------------+
-- | ACCOUNTING |
-- | RESEARCH   |
-- | SALES      |
-- +------------+

-- Q9 WAQTD Department details of the employees who are reporting to MILLER .

SELECT *
FROM DEPT
WHERE DEPTNO = (SELECT DEPTNO
FROM EMP
WHERE MGR = (SELECT EMPNO
FROM EMP
WHERE ENAME = 'MILLER'));
-- Empty set (0.00 sec)

/*                                                              ASSIGNMENT QUESTIONS ON EMP & MGR RELATION                                                    */

-- Q71 WAQTD SMITHS REPORTING MANAGER'S NAME

SELECT ENAME
FROM EMP
WHERE EMPNO = (SELECT MGR
FROM EMP
WHERE ENAME = 'SMITH');
-- +-------+
-- | ENAME |
-- +-------+
-- | FORD  |
-- +-------+

-- Q72 WAQTD ADAMS MANAGER'S MANAGER NAME

SELECT ENAME
FROM EMP
WHERE EMPNO = (SELECT MGR
FROM EMP
WHERE EMPNO = (SELECT MGR
FROM EMP
WHERE ENAME = 'ADAMS'));
-- +-------+
-- | ENAME |
-- +-------+
-- | JONES |
-- +-------+

-- Q73 WAQTD DNAME OF JONES MANAGER

SELECT DNAME
FROM DEPT
WHERE DEPTNO = (SELECT DEPTNO
FROM EMP
WHERE EMPNO = (SELECT MGR
FROM EMP
WHERE ENAME = 'JONES'));
-- +------------+
-- | DNAME      |
-- +------------+
-- | ACCOUNTING |
-- +------------+

-- Q74 WAQTD MILLER'S MANAGER'S SALARY

SELECT SAL
FROM EMP
WHERE EMPNO = (SELECT MGR
FROM EMP
WHERE ENAME = 'MILLER');
-- +------+
-- | SAL  |
-- +------+
-- | 2450 |
-- +------+

-- Q75 WAQTD LOC OF SMITH'S MANAGER'S MANAGER.

SELECT LOC
FROM DEPT
WHERE DEPTNO IN (SELECT DEPTNO
FROM EMP
WHERE EMPNO = (SELECT MGR
FROM EMP
WHERE EMPNO = (SELECT MGR
FROM EMP
WHERE ENAME = 'SMITH')));
-- +--------+
-- | LOC    |
-- +--------+
-- | DALLAS |
-- +--------+

-- Q76 WAQTD NAME OF THE EMPLOYEES REPORTING TO BLAKE

SELECT ENAME
FROM EMP
WHERE MGR IN (SELECT EMPNO
FROM EMP
WHERE ENAME = 'BLAKE');
-- +--------+
-- | ENAME  |
-- +--------+
-- | ALLEN  |
-- | WARD   |
-- | MARTIN |
-- | TURNER |
-- | JAMES  |
-- +--------+

-- Q77 WAQTD NUMBER OF EMPLPOYEES REPORTING TO KING

SELECT COUNT(*)
FROM EMP
WHERE MGR IN (SELECT EMPNO
FROM EMP
WHERE ENAME = 'KING');
-- +----------+
-- | COUNT(*) |
-- +----------+
-- |        3 |
-- +----------+

-- Q78 WAQTD DETAILS OF THE EMPLOYEES REPORTING TO JONES

SELECT *
FROM EMP
WHERE MGR IN (SELECT EMPNO
FROM EMP
WHERE ENAME = 'JONES');
-- +-------+-------+---------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB     | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+---------+------+------------+------+------+--------+
-- |  7788 | SCOTT | ANALYST | 7566 | 1982-12-09 | 3000 | NULL |     20 |
-- |  7902 | FORD  | ANALYST | 7566 | 1981-12-03 | 3000 | NULL |     20 |
-- +-------+-------+---------+------+------------+------+------+--------+

-- Q79 WAQTD ENAMES OF THE EMPLOYEES REPORTING TO BLAKE'S MANAGER

SELECT ENAME
FROM EMP
WHERE MGR IN (SELECT MGR
FROM EMP
WHERE ENAME = 'BLAKE');
-- +-------+
-- | ENAME |
-- +-------+
-- | JONES |
-- | BLAKE |
-- | CLARK |
-- +-------+

-- Q80 WAQTD NUMBER OF EMPLOYEES REPORTING TO FORD'S MANAGER

SELECT COUNT(*)
FROM EMP
WHERE MGR IN (SELECT MGR
FROM EMP
WHERE ENAME = 'FORD');
-- +----------+
-- | COUNT(*) |
-- +----------+
-- |        2 |
-- +----------+
