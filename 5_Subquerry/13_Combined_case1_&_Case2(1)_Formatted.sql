-- Q31 WAQTD NAMES OF THE EMPLOYEES EARNING MORE
-- THAN SCOTT IN ACCOUNTING DEPT
SELECT ENAME
FROM EMP
WHERE SAL > (
SELECT SAL
FROM EMP
WHERE ENAME = 'SCOTT'
)
AND DEPTNO IN (
SELECT DEPTNO
FROM DEPT
WHERE DNAME = 'ACCOUNTING'
);
-- +-------+
-- | ENAME |
-- +-------+
-- | KING  |
-- +-------+

-- Q32 WAQTD DETAILS OF THE EMPLOYEES WORKING AS
-- MANAGER IN THE LOCATION CHICAGO

SELECT *
FROM EMP
WHERE JOB = 'MANAGER' AND DEPTNO IN (SELECT DEPTNO
FROM DEPT
WHERE LOC = 'CHICAGO');
-- +-------+-------+---------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB     | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+---------+------+------------+------+------+--------+
-- |  7698 | BLAKE | MANAGER | 7839 | 1981-05-01 | 2850 | NULL |     30 |
-- +-------+-------+---------+------+------------+------+------+--------+

-- Q33 WAQTD NAME AND SAL OF THE EMPLOYEES EARNING
-- MORE THAN KING IN THE DEPT ACCOUNTING

SELECT ENAME, SAL
FROM EMP
WHERE SAL > (SELECT SAL
FROM EMP
WHERE ENAME = 'KING')
AND  DEPTNO IN (SELECT DEPTNO
FROM DEPT
WHERE DNAME = 'ACCOUNTING');
-- Empty set (0.00 sec)

-- Q34 WAQTD DETAILS OF THE EMPLOYEES WORKING AS
-- SALESMAN IN THE DEPARTEMENT SALES

SELECT *
FROM EMP
WHERE JOB = 'SALESMAN'
AND DEPTNO IN (SELECT DEPTNO
FROM DEPT
WHERE DNAME = 'SALES');
-- +-------+--------+----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+----------+------+------------+------+------+--------+
-- |  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600 |  300 |     30 |
-- |  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250 |  500 |     30 |
-- |  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- |  7844 | TURNER | SALESMAN | 7698 | 1980-09-08 | 1500 |    0 |     30 |
-- +-------+--------+----------+------+------------+------+------+--------+

-- Q35 WAQTD NAME , SAL , JOB , HIREDATE OF THE EMPLOYEES
-- WORKING IN OPERATIONS DEPARTMENT AND HIRED
-- BEFORE KING

SELECT ENAME, SAL, JOB, HIREDATE
FROM EMP
WHERE DEPTNO IN (SELECT DEPTNO
FROM DEPT
WHERE DNAME = 'OPERATIONS')
AND  HIREDATE < (SELECT HIREDATE
FROM EMP
WHERE ENAME = 'KING');
-- Empty set (0.00 sec)

-- 37.WAQTD DNAME OF THE EMPLOYEES WHOS NAMES HAS
-- CHARACTER 'A' IN IT .

SELECT dname
FROM dept
WHERE deptno IN (
SELECT deptno
FROM emp
WHERE ename LIKE '%A%'
);
-- +------------+
-- | dname      |
-- +------------+
-- | ACCOUNTING |
-- | RESEARCH   |
-- | SALES      |
-- +------------+

-- 38.WAQTD DNAME AND LOC OF THE EMPLOYEES WHOS
-- SALARY IS RUPEES 800 .

SELECT dname, loc
FROM dept
WHERE deptno IN (
SELECT deptno
FROM emp
WHERE sal = 800
);
-- +----------+--------+
-- | dname    | loc    |
-- +----------+--------+
-- | RESEARCH | DALLAS |
-- +----------+--------+

-- 39.WAQTD DNAME OF THE EMPLOYEES WHO EARN
-- COMISSION

SELECT dname
FROM dept
WHERE deptno IN (
SELECT deptno
FROM emp
WHERE comm IS NOT NULL
);
-- +-------+
-- | dname |
-- +-------+
-- | SALES |
-- +-------+

-- 40.WAQTD LOC OF THE EMPLOYEES IF THEY EARN
-- COMISSION IN DEPT 40

SELECT loc
FROM dept
WHERE deptno = 40
AND deptno IN (
SELECT deptno
FROM emp
WHERE comm IS NOT NULL
);
-- Empty set (0.00 sec)
