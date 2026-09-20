-- =====================================================
-- 18_Self_join(3)
-- Repository Formatted Version
-- Directly executable in MySQL
-- =====================================================

-- EX: WAQTD Ename and Manager's name for all the employees

SELECT E1.ENAME, E2.ENAME
FROM EMP E1 JOIN EMP E2
ON E1.MGR = E2.EMPNO
;
-- +--------+-------+
-- | ENAME  | ENAME |
-- +--------+-------+
-- | FORD   | JONES |
-- | SCOTT  | JONES |
-- | JAMES  | BLAKE |
-- | TURNER | BLAKE |
-- | MARTIN | BLAKE |
-- | WARD   | BLAKE |
-- | ALLEN  | BLAKE |
-- | MILLER | CLARK |
-- | ADAMS  | SCOTT |
-- | CLARK  | KING  |
-- | BLAKE  | KING  |
-- | JONES  | KING  |
-- | SMITH  | FORD  |
-- +--------+-------+

-- Q2 WAQTD Ename , sal along with manager's name and
-- manager's salary for all the employees .

SELECT E1.ENAME, E1.SAL, E2.ENAME, E2.SAL
FROM EMP E1 JOIN EMP E2
ON E1.MGR = E2.EMPNO
;
-- +--------+------+-------+------+
-- | ENAME  | SAL  | ENAME | SAL  |
-- +--------+------+-------+------+
-- | FORD   | 3000 | JONES | 2975 |
-- | SCOTT  | 3000 | JONES | 2975 |
-- | JAMES  |  950 | BLAKE | 2850 |
-- | TURNER | 1500 | BLAKE | 2850 |
-- | MARTIN | 1250 | BLAKE | 2850 |
-- | WARD   | 1250 | BLAKE | 2850 |
-- | ALLEN  | 1600 | BLAKE | 2850 |
-- | MILLER | 1300 | CLARK | 2450 |
-- | ADAMS  | 1100 | SCOTT | 3000 |
-- | CLARK  | 2450 | KING  | 5000 |
-- | BLAKE  | 2850 | KING  | 5000 |
-- | JONES  | 2975 | KING  | 5000 |
-- | SMITH  |  800 | FORD  | 3000 |
-- +--------+------+-------+------+

-- Q3 WAQTD ename , manager's name along with their deptno
-- If employee is working as clerk .

SELECT E1.ENAME,
E2.ENAME,
E1.DEPTNO
FROM EMP E1
JOIN EMP E2
ON E1.MGR = E2.EMPNO
WHERE E1.JOB = 'CLERK';
-- +--------+-------+--------+
-- | ENAME  | ENAME | DEPTNO |
-- +--------+-------+--------+
-- | JAMES  | BLAKE |     30 |
-- | MILLER | CLARK |     10 |
-- | ADAMS  | SCOTT |     20 |
-- | SMITH  | FORD  |     20 |
-- +--------+-------+--------+

-- Q4 WAQTD ename , manager's job if manager works as Analyst .

SELECT E1.ENAME,
E2.HIREDATE
FROM EMP E1
JOIN EMP E2
ON E1.MGR = E2.EMPNO
WHERE E1.HIREDATE < '1982-01-01';
-- +--------+------------+
-- | ENAME  | HIREDATE   |
-- +--------+------------+
-- | FORD   | 1981-04-02 |
-- | JAMES  | 1981-05-01 |
-- | TURNER | 1981-05-01 |
-- | MARTIN | 1981-05-01 |
-- | WARD   | 1981-05-01 |
-- | ALLEN  | 1981-05-01 |
-- | CLARK  | 1981-11-17 |
-- | BLAKE  | 1981-11-17 |
-- | JONES  | 1981-11-17 |
-- | SMITH  | 1981-12-03 |
-- +--------+------------+

-- Q5 WAQTD ename and manager's name along with their job if
-- emp and manager are working for same designation
mysql> SELECT e.ename AS emp_name,
m.ename AS manager_name,
e.job
FROM   emp e
JOIN   emp m ON e.mgr = m.empno
WHERE  e.job = m.job;
-- Empty set (0.00 sec)

-- Q6 WAQTD ename emp salary manager's name manager's salary
-- If manager earns more than employee .

SELECT E1.ENAME, E1.SAL, E2.ENAME, E2.SAL
FROM EMP E1 JOIN EMP E2
ON E1.MGR = E2.EMPNO
WHERE E1.SAL < E2.SAL;
-- +--------+------+-------+------+
-- | ENAME  | SAL  | ENAME | SAL  |
-- +--------+------+-------+------+
-- | JAMES  |  950 | BLAKE | 2850 |
-- | TURNER | 1500 | BLAKE | 2850 |
-- | MARTIN | 1250 | BLAKE | 2850 |
-- | WARD   | 1250 | BLAKE | 2850 |
-- | ALLEN  | 1600 | BLAKE | 2850 |
-- | MILLER | 1300 | CLARK | 2450 |
-- | ADAMS  | 1100 | SCOTT | 3000 |
-- | CLARK  | 2450 | KING  | 5000 |
-- | BLAKE  | 2850 | KING  | 5000 |
-- | JONES  | 2975 | KING  | 5000 |
-- | SMITH  |  800 | FORD  | 3000 |
-- +--------+------+-------+------+

-- mysql> Q7 WAQTD ename and manager's name along with manager's
-- commission if manager earns commission .

SELECT e.ename AS emp_name,
m.ename AS manager_name,
m.comm  AS manager_commission
FROM   emp e
JOIN   emp m ON e.mgr = m.empno
WHERE  m.comm IS NOT NULL;
-- Empty set (0.00 sec)

#                                           ASSIGNMENT QUESTIONS

-- Q1 WAQTD NAME OF THE EMPLOYEE AND HIS MANAGER'S
-- NAME IF EMPLOYEE IS WORKING AS CLERK

SELECT E1.ENAME, E2.ENAME
FROM EMP E1 JOIN EMP E2
ON E1.MGR = E2.EMPNO
WHERE E1.JOB = 'CLERK';
-- +--------+-------+
-- | ENAME  | ENAME |
-- +--------+-------+
-- | JAMES  | BLAKE |
-- | MILLER | CLARK |
-- | ADAMS  | SCOTT |
-- | SMITH  | FORD  |
-- +--------+-------+

-- Q2 WAQTD NAME OF THE EMPLOYEE AND MANAGER'S
-- DESIGNATION IF MANAGER WORKS IN DEPT 10 OR 20

SELECT E1.ENAME, E2.JOB
FROM EMP E1 JOIN EMP E2
ON E1.MGR = E2.EMPNO
WHERE E2.DEPTNO IN (10, 20);
-- +--------+-----------+
-- | ENAME  | JOB       |
-- +--------+-----------+
-- | SMITH  | ANALYST   |
-- | JONES  | PRESIDENT |
-- | BLAKE  | PRESIDENT |
-- | CLARK  | PRESIDENT |
-- | SCOTT  | MANAGER   |
-- | ADAMS  | ANALYST   |
-- | FORD   | MANAGER   |
-- | MILLER | MANAGER   |
-- +--------+-----------+

-- Q3 WAQTD NAME OF THE EMP AND MANAGERS SALARY IF
-- EMPLOYEE AND MANAGER BOTH EARN MORE THAN 2300

SELECT E1.ENAME, E2.SAL
FROM EMP E1 JOIN EMP E2
ON E1.MGR = E2.EMPNO
WHERE E1.SAL > 2300 AND E2.SAL > 2300;
-- +-------+------+
-- | ENAME | SAL  |
-- +-------+------+
-- | FORD  | 2975 |
-- | SCOTT | 2975 |
-- | CLARK | 5000 |
-- | BLAKE | 5000 |
-- | JONES | 5000 |
-- +-------+------+

-- Q4 WAQTD EMP NAME AND MANAGER'S HIREDATE IF
-- EMPLOYEE WAS HIRED BEFORE1982

SELECT E1.ENAME, E2.HIREDATE
FROM EMP E1 JOIN EMP E2
ON E1.MGR = E2.EMPNO
WHERE E2.HIREDATE > '1982-12-31';

-- Q5 WAQTD EMP NAME AND MANAGER'S COMM IF
-- EMPLOYEE WORKS AS SALESMAN AND MANAGER
-- WORKS IN DEPT 30

SELECT E1.ENAME, E2.COMM
FROM EMP E1 JOIN EMP E2
ON E1.MGR = E2.EMPNO
WHERE E1.JOB = 'SALESMAN' AND E2.DEPTNO IN (30);
-- +--------+------+
-- | ENAME  | COMM |
-- +--------+------+
-- | TURNER | NULL |
-- | MARTIN | NULL |
-- | WARD   | NULL |
-- | ALLEN  | NULL |
-- +--------+------+

-- Q6 WAQTD EMP NAME AND MANAGER NAME AND THEIR
-- SALARIES IF EMPLOYEE EARNS MORE THAN MANAGER

SELECT E1.ENAME, E1.SAL, E2.ENAME, E2.SAL
FROM EMP E1 JOIN EMP E2
ON E1.MGR = E2.EMPNO
WHERE E1.SAL > E2.SAL;
-- +-------+------+-------+------+
-- | ENAME | SAL  | ENAME | SAL  |
-- +-------+------+-------+------+
-- | FORD  | 3000 | JONES | 2975 |
-- | SCOTT | 3000 | JONES | 2975 |
-- +-------+------+-------+------+

-- Q7 WAQTD EMP NAME AND HIREDATE , MANAGER NAME
-- AND HIREDATE IF
-- MANAGER WAS HIRED BEFORE EMPLOYEE

SELECT E1.ENAME, E1.HIREDATE, E2.ENAME, E2.HIREDATE
FROM EMP E1 JOIN EMP E2
ON E1.MGR = E2.EMPNO
WHERE E1.HIREDATE > E2.HIREDATE;
-- +--------+------------+-------+------------+
-- | ENAME  | HIREDATE   | ENAME | HIREDATE   |
-- +--------+------------+-------+------------+
-- | FORD   | 1981-12-03 | JONES | 1981-04-02 |
-- | SCOTT  | 1982-12-09 | JONES | 1981-04-02 |
-- | JAMES  | 1981-12-03 | BLAKE | 1981-05-01 |
-- | MARTIN | 1981-09-28 | BLAKE | 1981-05-01 |
-- | MILLER | 1982-01-23 | CLARK | 1981-06-09 |
-- | ADAMS  | 1983-01-12 | SCOTT | 1982-12-09 |
-- +--------+------------+-------+------------+

-- Q8 WAQTD EMP NAME AND MANAGER NAME IF BOTH ARE
-- WORKING IN SAME JOB

SELECT E1.ENAME, E2.ENAME
FROM EMP E1 JOIN EMP E2
ON E1.MGR = E2.EMPNO
WHERE E1.JOB = E2.JOB;

-- Q9 WAQTD EMP NAME AND MANAGER NAME IF MANAGER
-- IS WORKING AS ACTUAL MANAGER

SELECT E1.ENAME, E2.ENAME
FROM EMP E1 JOIN EMP E2
ON E1.MGR = E2.EMPNO
WHERE E2.JOB = 'MANAGER';
-- +--------+-------+
-- | ENAME  | ENAME |
-- +--------+-------+
-- | ALLEN  | BLAKE |
-- | WARD   | BLAKE |
-- | MARTIN | BLAKE |
-- | SCOTT  | JONES |
-- | TURNER | BLAKE |
-- | JAMES  | BLAKE |
-- | FORD   | JONES |
-- | MILLER | CLARK |
-- +--------+-------+

-- Q10 WAQTD EMP NAME AND MANAGER NAME ALONG
-- WITH THEIR ANNUAL SALARIES IF EMPLOYEE WORKS IN
-- DEPT 10 , 20 AND MANAGER'S SAL IS GREATER THAN
-- EMPLOYEES SALARY .

SELECT E1.ENAME, E1.SAL * 12 AS EMP_ANNUAL_SAL, E2.ENAME, E2.SAL * 12 AS MGR_ANNUAL_SAL
FROM EMP E1 JOIN EMP E2
ON E1.MGR = E2.EMPNO
WHERE E1.DEPTNO IN (10, 20) AND E1.SAL < E2.SAL;
-- +--------+----------------+-------+----------------+
-- | ENAME  | EMP_ANNUAL_SAL | ENAME | MGR_ANNUAL_SAL |
-- +--------+----------------+-------+----------------+
-- | MILLER |          15600 | CLARK |          29400 |
-- | ADAMS  |          13200 | SCOTT |          36000 |
-- | CLARK  |          29400 | KING  |          60000 |
-- | JONES  |          35700 | KING  |          60000 |
-- | SMITH  |           9600 | FORD  |          36000 |
-- +--------+----------------+-------+----------------+

-- Q11 WAQTD EMPLOYEE'S NAME AND MANAGER'S
-- DESIGNATION FOR ALL THE EMPLOYEES

SELECT E1.ENAME, E2.JOB
FROM EMP E1 JOIN EMP E2
ON E1.MGR = E2.EMPNO;
-- +--------+-----------+
-- | ENAME  | JOB       |
-- +--------+-----------+
-- | FORD   | MANAGER   |
-- | SCOTT  | MANAGER   |
-- | JAMES  | MANAGER   |
-- | TURNER | MANAGER   |
-- | MARTIN | MANAGER   |
-- | WARD   | MANAGER   |
-- | ALLEN  | MANAGER   |
-- | MILLER | MANAGER   |
-- | ADAMS  | ANALYST   |
-- | CLARK  | PRESIDENT |
-- | BLAKE  | PRESIDENT |
-- | JONES  | PRESIDENT |
-- | SMITH  | ANALYST   |
-- +--------+-----------+

-- Q12 WAQTD EMPLOYEE'S NAME AND MANAGER'S SALARY
-- FOR ALL THE EMPLOYEES IF MANAGER'S SALARY ENDS
-- WITH 50

SELECT E1.ENAME, E2.SAL
FROM EMP E1 JOIN EMP E2
ON E1.MGR = E2.EMPNO
WHERE E2.SAL LIKE '%50';
-- +--------+------+
-- | ENAME  | SAL  |
-- +--------+------+
-- | ALLEN  | 2850 |
-- | WARD   | 2850 |
-- | MARTIN | 2850 |
-- | TURNER | 2850 |
-- | JAMES  | 2850 |
-- | MILLER | 2450 |
-- +--------+------+
