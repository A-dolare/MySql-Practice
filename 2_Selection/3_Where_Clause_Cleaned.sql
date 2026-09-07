

-- Q1 WAQTD names of the employees getting salary More than 300

SELECT ENAME
FROM EMP
WHERE SAL > 300;
-- +--------+
-- | ENAME  |
-- +--------+
-- | SMITH  |
-- | ALLEN  |
-- | WARD   |
-- | JONES  |
-- | MARTIN |
-- | BLAKE  |
-- | CLARK  |
-- | SCOTT  |
-- | KING   |
-- | TURNER |
-- | ADAMS  |
-- | JAMES  |
-- | FORD   |
-- | MILLER |
-- +--------+

-- Q2 WAQTD names and salary of the employees working in dept 10

SELECT ENAME, SAL
FROM EMP
WHERE DEPTNO = 10;
-- +--------+------+
-- | ENAME  | SAL  |
-- +--------+------+
-- | CLARK  | 2450 |
-- | KING   | 5000 |
-- | MILLER | 1300 |
-- +--------+------+

-- Q3 WAQTD all the details of the employees whose salary is
-- Less than 1000 rupees .

SELECT E.*
FROM EMP E
WHERE E.SAL < 1000;
-- +-------+-------+-------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB   | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+-------+------+------------+------+------+--------+
-- |  7369 | SMITH | CLERK | 7902 | 1980-12-17 |  800 | NULL |     20 |
-- |  7900 | JAMES | CLERK | 7698 | 1981-12-03 |  950 | NULL |     30 |
-- +-------+-------+-------+------+------------+------+------+--------+

-- Q4 WAQTD name and hiredate of an employee hired on
-- '09-JUN-1981'

SELECT ENAME, HIREDATE
FROM EMP
WHERE HIREDATE = '1981-06-09';
-- +-------+------------+
-- | ENAME | HIREDATE   |
-- +-------+------------+
-- | CLARK | 1981-06-09 |
-- +-------+------------+

-- Q5 WAQTD details of the employee whose name is 'Miller'

SELECT E.*
FROM EMP E
WHERE E.ENAME = 'MILLER';
-- +-------+--------+-------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB   | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+-------+------+------------+------+------+--------+
-- |  7934 | MILLER | CLERK | 7782 | 1982-01-23 | 1300 | NULL |     10 |
-- +-------+--------+-------+------+------------+------+------+--------+

-- Q6 WAQTD details of the employee hired after '01-JAN-1982'

SELECT E.*
FROM EMP E
WHERE HIREDATE > '1982-01-01';
-- +-------+--------+---------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB     | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+---------+------+------------+------+------+--------+
-- |  7788 | SCOTT  | ANALYST | 7566 | 1982-12-09 | 3000 | NULL |     20 |
-- |  7876 | ADAMS  | CLERK   | 7788 | 1983-01-12 | 1100 | NULL |     20 |
-- |  7934 | MILLER | CLERK   | 7782 | 1982-01-23 | 1300 | NULL |     10 |
-- +-------+--------+---------+------+------------+------+------+--------+

-- Q7 WAQTD name sal and hiredate of the employees who were
-- Hired before 1985 .

SELECT ENAME, SAL, HIREDATE
FROM EMP
WHERE HIREDATE < '1985-01-01';
-- +--------+------+------------+
-- | ENAME  | SAL  | HIREDATE   |
-- +--------+------+------------+
-- | SMITH  |  800 | 1980-12-17 |
-- | ALLEN  | 1600 | 1981-02-20 |
-- | WARD   | 1250 | 1981-02-22 |
-- | JONES  | 2975 | 1981-04-02 |
-- | MARTIN | 1250 | 1981-09-28 |
-- | BLAKE  | 2850 | 1981-05-01 |
-- | CLARK  | 2450 | 1981-06-09 |
-- | SCOTT  | 3000 | 1982-12-09 |
-- | KING   | 5000 | 1981-11-17 |
-- | TURNER | 1500 | 1980-09-08 |
-- | ADAMS  | 1100 | 1983-01-12 |
-- | JAMES  |  950 | 1981-12-03 |
-- | FORD   | 3000 | 1981-12-03 |
-- | MILLER | 1300 | 1982-01-23 |
-- +--------+------+------------+

-- Q8 WAQTD name sal and hiredate of the employees who were
-- Hired after 1985 .

SELECT ENAME, SAL, HIREDATE
FROM EMP
WHERE HIREDATE > '1985-12-31';
-- Empty set (0.00 sec)

-- Q9 WAQTD name of the employees who was hired on Valentine's
-- day 2020 .

SELECT ENAME
FROM EMP
WHERE HIREDATE = '2020-02-14';
-- Empty set (0.00 sec)

--                                                              ASSIGNMENT QUESTIONS ON WHERE CLAUSE

-- Q1 WAQTD THE ANNUAL SALARY OF THE EMPLOYEE WHOS
-- NAME IS SMITH

SELECT SAL * 12
FROM EMP
WHERE ENAME = 'SMITH';
-- +----------+
-- | SAL * 12 |
-- +----------+
-- |     9600 |
-- +----------+

-- Q2 WAQTD NAME OF THE EMPLOYEES WORKING AS CLERK

SELECT ENAME
FROM EMP
WHERE JOB = 'CLERK';
-- +--------+
-- | ENAME  |
-- +--------+
-- | SMITH  |
-- | ADAMS  |
-- | JAMES  |
-- | MILLER |
-- +--------+

-- Q3 WAQTD SALARY OF THE EMPLOYEES WHO ARE
-- WORKING AS SALESMAN

SELECT SAL
FROM EMP
WHERE JOB = 'SALESMAN';
-- +------+
-- | SAL  |
-- +------+
-- | 1600 |
-- | 1250 |
-- | 1250 |
-- | 1500 |
-- +------+

-- Q4 WAQTD DETAILS OF THE EMP WHO EARNS MORE THAN
--2000

SELECT *
FROM EMP
WHERE SAL > 2000;
-- +-------+-------+-----------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+-----------+------+------------+------+------+--------+
-- |  7566 | JONES | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL |     20 |
-- |  7698 | BLAKE | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |
-- |  7782 | CLARK | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |
-- |  7788 | SCOTT | ANALYST   | 7566 | 1982-12-09 | 3000 | NULL |     20 |
-- |  7839 | KING  | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- |  7902 | FORD  | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
-- +-------+-------+-----------+------+------------+------+------+--------+

-- Q5 WAQTD DETAILS OF THE EMP WHOS NAME IS JONES

SELECT *
FROM EMP
WHERE ENAME = 'JONES';
-- +-------+-------+---------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB     | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+---------+------+------------+------+------+--------+
-- |  7566 | JONES | MANAGER | 7839 | 1981-04-02 | 2975 | NULL |     20 |
-- +-------+-------+---------+------+------------+------+------+--------+

-- Q6 WAQTD DETAILS OF THE EMP WHO WAS HIRED AFTER
-- 01-JAN-81

SELECT *
FROM EMP
WHERE HIREDATE > '1981-01-01';
-- +-------+--------+-----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+-----------+------+------------+------+------+--------+
-- |  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 |  300 |     30 |
-- |  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250 |  500 |     30 |
-- |  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL |     20 |
-- |  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- |  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |
-- |  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |
-- |  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000 | NULL |     20 |
-- |  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- |  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100 | NULL |     20 |
-- |  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950 | NULL |     30 |
-- |  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
-- |  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300 | NULL |     10 |
-- +-------+--------+-----------+------+------------+------+------+--------+

-- Q7 WAQTD NAME AND SAL ALONG WITH HIS ANNUAL
-- SALARY IF THE ANNUAL SALARY IS MORE THAN 12000

SELECT ENAME, SAL, SAL * 12
FROM EMP
WHERE SAL * 12 > 12000;
-- +--------+------+----------+
-- | ENAME  | SAL  | SAL * 12 |
-- +--------+------+----------+
-- | ALLEN  | 1600 |    19200 |
-- | WARD   | 1250 |    15000 |
-- | JONES  | 2975 |    35700 |
-- | MARTIN | 1250 |    15000 |
-- | BLAKE  | 2850 |    34200 |
-- | CLARK  | 2450 |    29400 |
-- | SCOTT  | 3000 |    36000 |
-- | KING   | 5000 |    60000 |
-- | TURNER | 1500 |    18000 |
-- | ADAMS  | 1100 |    13200 |
-- | FORD   | 3000 |    36000 |
-- | MILLER | 1300 |    15600 |
-- +--------+------+----------+

-- Q8 WAQTD EMPNO OF THE EMPLOYEES WHO ARE WORKING
-- IN DEPT 30

SELECT EMPNO
FROM EMP
WHERE DEPTNO = 30;
-- +-------+
-- | EMPNO |
-- +-------+
-- |  7499 |
-- |  7521 |
-- |  7654 |
-- |  7698 |
-- |  7844 |
-- |  7900 |
-- +-------+

-- Q9 WAQTD ENAME AND HIREDATE IF THEY ARE HIRED
-- BEFORE 1981

SELECT ENAME, HIREDATE
FROM EMP
WHERE HIREDATE < '1981-01-01';
-- +--------+------------+
-- | ENAME  | HIREDATE   |
-- +--------+------------+
-- | SMITH  | 1980-12-17 |
-- | TURNER | 1980-09-08 |
-- +--------+------------+

-- Q10 WAQTD DETAILS OF THE EMPLOYEES WORKING AS
MANAGER

SELECT *
FROM EMP
WHERE JOB = 'MANAGER';
-- +-------+-------+---------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB     | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+---------+------+------------+------+------+--------+
-- |  7566 | JONES | MANAGER | 7839 | 1981-04-02 | 2975 | NULL |     20 |
-- |  7698 | BLAKE | MANAGER | 7839 | 1981-05-01 | 2850 | NULL |     30 |
-- |  7782 | CLARK | MANAGER | 7839 | 1981-06-09 | 2450 | NULL |     10 |
-- +-------+-------+---------+------+------------+------+------+--------+

-- Q11 WAQTD NAME AND SALARY GIVEN TO AN EMPLOYEE IF
EMPLOYEE EARNS A COMMISSION OF RUPEES 1400

SELECT ENAME, SAL
FROM EMP
WHERE COMM = 1400;
-- +--------+------+
-- | ENAME  | SAL  |
-- +--------+------+
-- | MARTIN | 1250 |
-- +--------+------+

-- Q12 WAQTD DETAILS OF EMPLOYEES HAVING COMMISSION
-- MORE THAN SALARY

SELECT *
FROM EMP
WHERE COMM > SAL;
-- +-------+--------+----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+----------+------+------------+------+------+--------+
-- |  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- +-------+--------+----------+------+------------+------+------+--------+

-- Q13 WAQTD EMPNO OF EMPLOYEES HIRED BEFORE THE
-- YEAR 87

SELECT EMPNO
FROM EMP
WHERE HIREDATE < '1987-01-01';
-- +-------+
-- | EMPNO |
-- +-------+
-- |  7369 |
-- |  7499 |
-- |  7521 |
-- |  7566 |
-- |  7654 |
-- |  7698 |
-- |  7782 |
-- |  7788 |
-- |  7839 |
-- |  7844 |
-- |  7876 |
-- |  7900 |
-- |  7902 |
-- |  7934 |
-- +-------+

-- Q14 WAQTD DETAILS OF EMPLOYEES WORKING AS A MANAGER

SELECT *
FROM EMP
WHERE JOB = 'MANAGER';
-- +-------+-------+---------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB     | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+---------+------+------------+------+------+--------+
-- |  7566 | JONES | MANAGER | 7839 | 1981-04-02 | 2975 | NULL |     20 |
-- |  7698 | BLAKE | MANAGER | 7839 | 1981-05-01 | 2850 | NULL |     30 |
-- |  7782 | CLARK | MANAGER | 7839 | 1981-06-09 | 2450 | NULL |     10 |
-- +-------+-------+---------+------+------------+------+------+--------+

-- Q15 WAQTD DETAILS OF EMPS EARNING MORE THAN 2000
-- RUPEES PER MONTH

SELECT *
FROM EMP
WHERE SAL > 2000;
-- +-------+-------+-----------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+-----------+------+------------+------+------+--------+
-- |  7566 | JONES | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL |     20 |
-- |  7698 | BLAKE | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |
-- |  7782 | CLARK | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |
-- |  7788 | SCOTT | ANALYST   | 7566 | 1982-12-09 | 3000 | NULL |     20 |
-- |  7839 | KING  | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- |  7902 | FORD  | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
-- +-------+-------+-----------+------+------------+------+------+--------+

