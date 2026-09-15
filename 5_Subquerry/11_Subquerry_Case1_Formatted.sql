

# Why / When Do we use SUB QUERY :

# Case 1 : Whenever we have Unknowns present in the Question
-- We use sub query to find the Unknown .

# CASE-2 : Whenever the data to be selected and the condition to be
-- executed are present in different tables we use Sub Query .


/*                                                              CASE 1 OF USING SUBQUERIES                                                                    */

-- Q1 WAQTD names of the employees earning more than 2500

SELECT ENAME
FROM EMP
WHERE SAL > 2500;
-- +-------+
-- | ENAME |
-- +-------+
-- | JONES |
-- | BLAKE |
-- | SCOTT |
-- | KING  |
-- | FORD  |
-- +-------+

-- Q2 WAQTD names of the employees earning less than MILLER .

SELECT ENAME
FROM EMP
WHERE SAL < (SELECT SAL
FROM EMP
WHERE ENAME = 'MILLER');
-- +--------+
-- | ENAME  |
-- +--------+
-- | SMITH  |
-- | WARD   |
-- | MARTIN |
-- | ADAMS  |
-- | JAMES  |
-- +--------+

-- Q3 WAQTD name and deptno of the employees working in the same
-- Dept as SMITH .

SELECT ENAME, DEPTNO
FROM EMP
WHERE DEPTNO = (SELECT DEPTNO
FROM EMP
WHERE ENAME = 'SMITH');
-- +-------+--------+
-- | ENAME | DEPTNO |
-- +-------+--------+
-- | SMITH |     20 |
-- | JONES |     20 |
-- | SCOTT |     20 |
-- | ADAMS |     20 |
-- | FORD  |     20 |
-- +-------+--------+

-- Q4 WAQTD name and hiredate of the employees if the employee
-- Was hired after JONES .

SELECT ENAME, HIREDATE
FROM EMP
WHERE HIREDATE > (SELECT HIREDATE
FROM EMP
WHERE ENAME = 'JONES');
-- +--------+------------+
-- | ENAME  | HIREDATE   |
-- +--------+------------+
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

-- Q5 WAQTD all the details of the employee working in the same
-- Designation as KING .

SELECT E.*
FROM EMP E
WHERE E.JOB = (SELECT JOB
FROM EMP
WHERE ENAME = 'KING');
-- +-------+-------+-----------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+-----------+------+------------+------+------+--------+
-- |  7839 | KING  | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- +-------+-------+-----------+------+------------+------+------+--------+

-- Q6 WAQTD name , sal , deptno of the employees if the employees
-- Earn more than 2000 and work in the same dept as JAMES .

SELECT ENAME, SAL, DEPTNO
FROM EMP
WHERE SAL > 2000 AND DEPTNO = (SELECT DEPTNO
FROM EMP
WHERE ENAME = 'JAMES');
-- +-------+------+--------+
-- | ENAME | SAL  | DEPTNO |
-- +-------+------+--------+
-- | BLAKE | 2850 |     30 |
-- +-------+------+--------+

-- Q7 WAQTD all the details of the employees working in the
-- Same designation as MILLER and earning more than 1500

SELECT E.*
FROM EMP E
WHERE E.SAL > 1500 AND E.JOB = (SELECT JOB
FROM EMP
WHERE ENAME = 'MILLER');

-- Q8 WAQTD details of the employees earning more than SMITH
-- But less than KING .

SELECT E.*
FROM EMP E
WHERE E.SAL > (SELECT SAL
FROM EMP
WHERE ENAME = 'SMITH') AND SAL < (SELECT SAL
FROM EMP
WHERE ENAME = 'KING');
-- +-------+--------+----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+----------+------+------------+------+------+--------+
-- |  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600 |  300 |     30 |
-- |  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250 |  500 |     30 |
-- |  7566 | JONES  | MANAGER  | 7839 | 1981-04-02 | 2975 | NULL |     20 |
-- |  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- |  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 | 2850 | NULL |     30 |
-- |  7782 | CLARK  | MANAGER  | 7839 | 1981-06-09 | 2450 | NULL |     10 |
-- |  7788 | SCOTT  | ANALYST  | 7566 | 1982-12-09 | 3000 | NULL |     20 |
-- |  7844 | TURNER | SALESMAN | 7698 | 1980-09-08 | 1500 |    0 |     30 |
-- |  7876 | ADAMS  | CLERK    | 7788 | 1983-01-12 | 1100 | NULL |     20 |
-- |  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 |  950 | NULL |     30 |
-- |  7902 | FORD   | ANALYST  | 7566 | 1981-12-03 | 3000 | NULL |     20 |
-- |  7934 | MILLER | CLERK    | 7782 | 1982-01-23 | 1300 | NULL |     10 |
-- +-------+--------+----------+------+------------+------+------+--------+

-- Q9 WAQTD name , sal and deptno of the employees if the employee Is
-- earning commission in dept 20 and earning salary more than Scott

SELECT ENAME, SAL, DEPTNO
FROM EMP
WHERE COMM IS NOT NULL AND DEPTNO = 20 AND SAL > (SELECT SAL
FROM EMP
WHERE ENAME = 'SCOTT')
;

-- Q10 WAQTD name and hiredate of the employees who's name ends with
-- 'S' and hired after James .

SELECT ENAME, HIREDATE
FROM EMP
WHERE ENAME LIKE '%S' AND HIREDATE > (SELECT HIREDATE
FROM EMP
WHERE ENAME = 'JAMES');
-- +-------+------------+
-- | ENAME | HIREDATE   |
-- +-------+------------+
-- | ADAMS | 1983-01-12 |
-- +-------+------------+

-- Q11 WAQTD names of the employees working in the same dept as
-- JAMES and earning salary more than ADAMS and working in the
-- same job role as MILLER and hired after MARTIN .

SELECT ENAME
FROM EMP
WHERE DEPTNO = (SELECT DEPTNO
FROM EMP
WHERE ENAME = 'JAMES')
AND SAL > (SELECT SAL
FROM EMP
WHERE ENAME = 'ADAMS')
AND JOB = (SELECT JOB
FROM EMP
WHERE ENAME = 'MILLER')
AND HIREDATE > (SELECT HIREDATE
FROM EMP
WHERE ENAME = 'MARTIN');

-- Q12 WAQTD all the details of the employees working as salesman in the
-- dept 20 and earning commission more than Allen and hired after
-- KING .

SELECT *
FROM EMP
WHERE JOB = 'SALESMAN'
AND DEPTNO = 30
AND COMM > (
SELECT COMM
FROM EMP
WHERE ENAME = 'ALLEN'
)
AND HIREDATE > (
SELECT HIREDATE
FROM EMP
WHERE ENAME = 'KING'
);

-- Q13 WAQTD number of employees earning more than SMITH and less
-- than MARTIN .

SELECT COUNT(*)
FROM EMP
WHERE SAL > (SELECT SAL
FROM EMP
WHERE ENAME = 'SMITH')
AND  SAL < (SELECT SAL
FROM EMP
WHERE ENAME = 'MARTIN');
-- +----------+
-- | COUNT(*) |
-- +----------+
-- |        2 |
-- +----------+

-- Q14 WAQTD Ename and SAL for all the employees earning more than
-- JONES .

SELECT ENAME, SAL
FROM EMP
WHERE SAL > (SELECT SAL
FROM EMP
WHERE ENAME = 'JONES');
-- +-------+------+
-- | ENAME | SAL  |
-- +-------+------+
-- | SCOTT | 3000 |
-- | KING  | 5000 |
-- | FORD  | 3000 |
-- +-------+------+

-- Q15  WAQTD all the details of the employees working as a manager .

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

/*                                                                ASSIGNMENT ON CASE 1                                                                        */

-- Q1 WAQTD NAME OF THE EMPLOYEES EARNING MORE THAN
-- ADAMS

SELECT ENAME
FROM EMP
WHERE SAL > (SELECT SAL
FROM EMP
WHERE ENAME = 'ADAMS');
-- +--------+
-- | ENAME  |
-- +--------+
-- | ALLEN  |
-- | WARD   |
-- | JONES  |
-- | MARTIN |
-- | BLAKE  |
-- | CLARK  |
-- | SCOTT  |
-- | KING   |
-- | TURNER |
-- | FORD   |
-- | MILLER |
-- +--------+

-- Q2 WAQTD NAME AND SALARY OF THE EMPLOYEES EARNING
-- LESS THAN KING

SELECT ENAME, SAL
FROM EMP
WHERE SAL < (SELECT SAL
FROM EMP
WHERE ENAME = 'KING');
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
-- | SCOTT  | 3000 |
-- | TURNER | 1500 |
-- | ADAMS  | 1100 |
-- | JAMES  |  950 |
-- | FORD   | 3000 |
-- | MILLER | 1300 |
-- +--------+------+

-- Q3 WAQTD NAME AND DEPTNO OF THE EMPLOYEES IF THEY ARE
-- WORKING IN THE SAME DEPT AS JONES

SELECT ENAME, DEPTNO
FROM EMP
WHERE DEPTNO = (SELECT DEPTNO
FROM EMP
WHERE ENAME = 'JONES');
-- +-------+--------+
-- | ENAME | DEPTNO |
-- +-------+--------+
-- | SMITH |     20 |
-- | JONES |     20 |
-- | SCOTT |     20 |
-- | ADAMS |     20 |
-- | FORD  |     20 |
-- +-------+--------+

-- Q4 WAQTD NAME AND JOB OF ALL THE EMPLOYEES WORKING
-- IN THE SAME DESIGNATION AS JAMES
SELECT ENAME, JOB
FROM EMP
WHERE JOB = (
SELECT JOB
FROM EMP
WHERE ENAME = 'JAMES'
);
-- +--------+-------+
-- | ENAME  | JOB   |
-- +--------+-------+
-- | SMITH  | CLERK |
-- | ADAMS  | CLERK |
-- | JAMES  | CLERK |
-- | MILLER | CLERK |
-- +--------+-------+

-- Q5 WAQTD EMPNO AND ENAME ALONG WITH ANNUAL SALARY
-- OF ALL THEEMPLOYEES IF THEIR ANNUAL SALARY IS
-- GREATER THAN WARDS ANNUAL SALARY

SELECT EMPNO, ENAME, SAL * 12
FROM EMP
WHERE SAL * 12 > (SELECT SAL * 12
FROM EMP
WHERE ENAME = 'WARD');
-- +-------+--------+----------+
-- | EMPNO | ENAME  | SAL * 12 |
-- +-------+--------+----------+
-- |  7499 | ALLEN  |    19200 |
-- |  7566 | JONES  |    35700 |
-- |  7698 | BLAKE  |    34200 |
-- |  7782 | CLARK  |    29400 |
-- |  7788 | SCOTT  |    36000 |
-- |  7839 | KING   |    60000 |
-- |  7844 | TURNER |    18000 |
-- |  7902 | FORD   |    36000 |
-- |  7934 | MILLER |    15600 |
-- +-------+--------+----------+

-- Q6 WAQTD NAME AND HIREDATE OF THE EMPLOYEES IF THEY
-- ARE HIRED BEFORE SCOTT

SELECT ENAME, HIREDATE
FROM EMP
WHERE HIREDATE < (SELECT HIREDATE
FROM EMP
WHERE ENAME = 'SCOTT');
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
-- | MILLER | 1982-01-23 |
-- +--------+------------+

-- Q7 WAQTD NAME AND HIREDATE OF THE EMPLOYEES IF THEY
-- ARE HIRED AFTER THE PRESIDENT

SELECT ENAME, HIREDATE
FROM EMP
WHERE HIREDATE > (SELECT HIREDATE
FROM EMP
WHERE JOB = 'PRESIDENT');
-- +--------+------------+
-- | ENAME  | HIREDATE   |
-- +--------+------------+
-- | SCOTT  | 1982-12-09 |
-- | ADAMS  | 1983-01-12 |
-- | JAMES  | 1981-12-03 |
-- | FORD   | 1981-12-03 |
-- | MILLER | 1982-01-23 |
-- +--------+------------+

-- Q8 WAQTD NAME AND SAL OF THE EMPLOYEE IF THEY ARE
-- EARNING SAL LESS THAN THE EMPLOYEE WHOS EMPNO IS 7839

SELECT ENAME, SAL
FROM EMP
WHERE SAL < (SELECT SAL
FROM EMP
WHERE EMPNO = 7839);
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
-- | SCOTT  | 3000 |
-- | TURNER | 1500 |
-- | ADAMS  | 1100 |
-- | JAMES  |  950 |
-- | FORD   | 3000 |
-- | MILLER | 1300 |
-- +--------+------+

-- Q9 WAQTD ALL THE DETAILS OF THE EMPLOYEES IF THE
-- EMPLOYEES ARE HIRED BEFORE MILLER

SELECT *
FROM EMP
WHERE HIREDATE < (SELECT HIREDATE
FROM EMP
WHERE ENAME = 'MILLER');
-- +-------+--------+-----------+------+------------+------+------+--------+
-- | EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+--------+-----------+------+------------+------+------+--------+
-- |  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800 | NULL |     20 |
-- |  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 |  300 |     30 |
-- |  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250 |  500 |     30 |
-- |  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL |     20 |
-- |  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- |  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |
-- |  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |
-- |  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- |  7844 | TURNER | SALESMAN  | 7698 | 1980-09-08 | 1500 |    0 |     30 |
-- |  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950 | NULL |     30 |
-- |  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
-- +-------+--------+-----------+------+------------+------+------+--------+

-- Q10 WAQTD ENAME AND EMPNO OF THE EMPLOYEES IF
-- EMPLOYEES ARE EARNING MORE THAN ALLEN

SELECT ENAME, EMPNO
FROM EMP
WHERE SAL > (SELECT SAL
FROM EMP
WHERE ENAME = 'MILLER');
-- +--------+-------+
-- | ENAME  | EMPNO |
-- +--------+-------+
-- | ALLEN  |  7499 |
-- | JONES  |  7566 |
-- | BLAKE  |  7698 |
-- | CLARK  |  7782 |
-- | SCOTT  |  7788 |
-- | KING   |  7839 |
-- | TURNER |  7844 |
-- | FORD   |  7902 |
-- +--------+-------+

-- Q11 WAQTD ENAME AND SALARY OF ALL THE EMPLOYEES WHO
-- ARE EARNING MORE THAN MILLER BUT LESS THAN ALLEN .

SELECT ENAME, SAL
FROM EMP
WHERE SAL > (SELECT SAL
FROM EMP
WHERE ENAME = 'MILLER')
AND  SAL < (SELECT SAL
FROM EMP
WHERE ENAME = 'ALLEN');
-- +--------+------+
-- | ENAME  | SAL  |
-- +--------+------+
-- | TURNER | 1500 |
-- +--------+------+

-- Q12 WAQTD ALL THE DETAILS OF THE EMPLOYEES WORKING IN
-- DEPT 20 AND WORKING IN THE SAME DESIGNATION AS SMITH

SELECT *
FROM EMP
WHERE DEPTNO = 20 AND JOB = (SELECT JOB
FROM EMP
WHERE ENAME = 'SMITH');
-- +-------+-------+-------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB   | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+-------+------+------------+------+------+--------+
-- |  7369 | SMITH | CLERK | 7902 | 1980-12-17 |  800 | NULL |     20 |
-- |  7876 | ADAMS | CLERK | 7788 | 1983-01-12 | 1100 | NULL |     20 |
-- +-------+-------+-------+------+------------+------+------+--------+

-- Q13 WAQTD ALL THE DETAILS OF THE EMPLOYEES WORKING AS
-- MANAGER IN THE SAME DEPT AS TURNER

SELECT *
FROM EMP
WHERE JOB = 'MANAGER' AND DEPTNO = (SELECT DEPTNO
FROM EMP
WHERE ENAME = 'TURNER');
-- +-------+-------+---------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB     | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+---------+------+------------+------+------+--------+
-- |  7698 | BLAKE | MANAGER | 7839 | 1981-05-01 | 2850 | NULL |     30 |
-- +-------+-------+---------+------+------------+------+------+--------+

-- Q14 WAQTD NAME AND HIREDATE OF THE EMPLOYEES HIRED
-- AFTER 1980 AND BEFORE KING

SELECT ENAME, HIREDATE
FROM EMP
WHERE HIREDATE > '1980-12-31' AND HIREDATE < (SELECT HIREDATE
FROM EMP
WHERE ENAME = 'KING');
-- +--------+------------+
-- | ENAME  | HIREDATE   |
-- +--------+------------+
-- | ALLEN  | 1981-02-20 |
-- | WARD   | 1981-02-22 |
-- | JONES  | 1981-04-02 |
-- | MARTIN | 1981-09-28 |
-- | BLAKE  | 1981-05-01 |
-- | CLARK  | 1981-06-09 |
-- +--------+------------+

-- Q15 WAQTD NAME AND SAL ALONG WITH ANNUAL SAL FOR ALL
-- EMPLOYEES WHOS SAL IS LESS THAN BLAKE AND MORE THAN
-- 3500

SELECT ENAME, SAL, SAL * 12
FROM EMP
WHERE SAL > 3500 AND SAL < (SELECT SAL
FROM EMP
WHERE ENAME = 'BLAKE');

-- Q16 WAQTD ALL THE DETAILS OF EMPLOYEES WHO EARN MORE
-- THAN SCOTT BUT LESS THAN KING

SELECT *
FROM EMP
WHERE SAL > (SELECT SAL
FROM EMP
WHERE ENAME = 'SCOTT')
AND  SAL < (SELECT SAL
FROM EMP
WHERE ENAME = 'KING');

-- Q17 WAQTD NAME OF THE EMPLOYEES WHOS NAME STARTS
-- WITH 'A' AND WORKS IN THE SAME DEPT AS BLAKE

SELECT ENAME
FROM EMP
WHERE ENAME = 'A%' AND DEPTNO = (SELECT DEPTNO
FROM EMP
WHERE ENAME = 'BLAKE');

-- Q18 WAQTD NAME AND COMM IF EMPLOYEES EARN COMISSION
-- AND WORK IN THE SAME DESIGNATION AS SMITH

SELECT ENAME, COMM
FROM EMP
WHERE COMM IS NOT NULL AND JOB = (SELECT JOB
FROM EMP
WHERE ENAME = 'SMITH');

-- Q19 WAQTD DETAILS OF ALL THE EMPLOYEES WORKING AS
-- CLERK IN THE SAME DEPT AS TURNER .

SELECT *
FROM EMP
WHERE JOB = 'CLERK' AND DEPTNO = (SELECT DEPTNO
FROM EMP
WHERE ENAME = 'TURNER');
-- +-------+-------+-------+------+------------+------+------+--------+
-- | EMPNO | ENAME | JOB   | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
-- +-------+-------+-------+------+------------+------+------+--------+
-- |  7900 | JAMES | CLERK | 7698 | 1981-12-03 |  950 | NULL |     30 |
-- +-------+-------+-------+------+------------+------+------+--------+

-- Q20 WAQTD ENAME, SAL AND DESIGNATION OF THE EMPLOYEES
-- WHOS ANNUAL SALARY IS MORE THAN SMITH AND LESS THAN
-- KING.

SELECT ENAME, SAL, JOB
FROM EMP
WHERE SAL * 12 > (SELECT SAL * 12
FROM EMP
WHERE ENAME = 'SMITH')
AND SAL * 12 < (SELECT SAL * 12
FROM EMP
WHERE ENAME = 'KING');
-- +--------+------+----------+
-- | ENAME  | SAL  | JOB      |
-- +--------+------+----------+
-- | ALLEN  | 1600 | SALESMAN |
-- | WARD   | 1250 | SALESMAN |
-- | JONES  | 2975 | MANAGER  |
-- | MARTIN | 1250 | SALESMAN |
-- | BLAKE  | 2850 | MANAGER  |
-- | CLARK  | 2450 | MANAGER  |
-- | SCOTT  | 3000 | ANALYST  |
-- | TURNER | 1500 | SALESMAN |
-- | ADAMS  | 1100 | CLERK    |
-- | JAMES  |  950 | CLERK    |
-- | FORD   | 3000 | ANALYST  |
-- | MILLER | 1300 | CLERK    |
-- +--------+------+----------+

NOTEE