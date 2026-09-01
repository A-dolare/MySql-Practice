-- WAQTD name salary and commission given to all the employees .

SELECT ENAME, SAL, COMM
FROM EMP;
-- +--------+------+------+
-- | ENAME  | SAL  | COMM |
-- +--------+------+------+
-- | SMITH  |  800 | NULL |
-- | ALLEN  | 1600 |  300 |
-- | WARD   | 1250 |  500 |
-- | JONES  | 2975 | NULL |
-- | MARTIN | 1250 | 1400 |
-- | BLAKE  | 2850 | NULL |
-- | CLARK  | 2450 | NULL |
-- | SCOTT  | 3000 | NULL |
-- | KING   | 5000 | NULL |
-- | TURNER | 1500 |    0 |
-- | ADAMS  | 1100 | NULL |
-- | JAMES  |  950 | NULL |
-- | FORD   | 3000 | NULL |
-- | MILLER | 1300 | NULL |
-- +--------+------+------+
-- Q2 WAQTD name of the employee along with their date of joining .

SELECT ENAME, HIREDATE
FROM EMP;
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
-- | SCOTT  | 1982-12-09 |
-- | KING   | 1981-11-17 |
-- | TURNER | 1980-09-08 |
-- | ADAMS  | 1983-01-12 |
-- | JAMES  | 1981-12-03 |
-- | FORD   | 1981-12-03 |
-- | MILLER | 1982-01-23 |
-- +--------+------------+
-- Q3 WAQTD dname and location for all the depts .

SELECT DNAME, LOC
FROM DEPT;
-- +------------+----------+
-- | DNAME      | LOC      |
-- +------------+----------+
-- | ACCOUNTING | NEW YORK |
-- | RESEARCH   | DALLAS   |
-- | SALES      | CHICAGO  |
-- | OPERATIONS | BOSTON   |
-- +------------+----------+


/*                                           ASSIGNMENT QUESTIONS                                             */

-- Q1 WRITE A QUERY TO DISPLAY ALL THE DETAILS FROM THE EMPLOYEE TABLE.

SELECT *
FROM EMP;
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
-- |  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000 | NULL |     20 |
-- |  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- |  7844 | TURNER | SALESMAN  | 7698 | 1980-09-08 | 1500 |    0 |     30 |
-- |  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100 | NULL |     20 |
-- |  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950 | NULL |     30 |
-- |  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
-- |  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300 | NULL |     10 |
-- +-------+--------+-----------+------+------------+------+------+--------+



-- Q2.WAQTD NAMES OF ALL THE EMPLOYEES.

SELECT ENAME
FROM EMP;
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


-- Q3.WAQTD NAME AND SALARY GIVEN TO ALL THE EMPLOYEES.

SELECT ENAME, SAL
FROM EMP;
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
-- | KING   | 5000 |
-- | TURNER | 1500 |
-- | ADAMS  | 1100 |
-- | JAMES  |  950 |
-- | FORD   | 3000 |
-- | MILLER | 1300 |
-- +--------+------+

-- Q4 WAQTD NAME AND COMMISSION GIVEN TO ALL THE EMPLOYEES.

SELECT ENAME, COMM
FROM EMP;
-- +--------+------+
-- | ENAME  | COMM |
-- +--------+------+
-- | SMITH  | NULL |
-- | ALLEN  |  300 |
-- | WARD   |  500 |
-- | JONES  | NULL |
-- | MARTIN | 1400 |
-- | BLAKE  | NULL |
-- | CLARK  | NULL |
-- | SCOTT  | NULL |
-- | KING   | NULL |
-- | TURNER |    0 |
-- | ADAMS  | NULL |
-- | JAMES  | NULL |
-- | FORD   | NULL |
-- | MILLER | NULL |
-- +--------+------+


-- Q5 WAQTD EMPLOYEE ID AND DEPARTMENT NUMBER OF ALL THE EMPLOYEES IN EMP TABLE.

SELECT EMPNO, DEPTNO
FROM EMP;
-- +-------+--------+
-- | EMPNO | DEPTNO |
-- +-------+--------+
-- |  7369 |     20 |
-- |  7499 |     30 |
-- |  7521 |     30 |
-- |  7566 |     20 |
-- |  7654 |     30 |
-- |  7698 |     30 |
-- |  7782 |     10 |
-- |  7788 |     20 |
-- |  7839 |     10 |
-- |  7844 |     30 |
-- |  7876 |     20 |
-- |  7900 |     30 |
-- |  7902 |     20 |
-- |  7934 |     10 |
-- +-------+--------+

-- Q6.WAQTD ENAME AND HIREDATE OF ALL THE EMPLOYEES .

SELECT ENAME, HIREDATE
FROM EMP;
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
-- | SCOTT  | 1982-12-09 |
-- | KING   | 1981-11-17 |
-- | TURNER | 1980-09-08 |
-- | ADAMS  | 1983-01-12 |
-- | JAMES  | 1981-12-03 |
-- | FORD   | 1981-12-03 |
-- | MILLER | 1982-01-23 |
-- +--------+------------+


-- Q7 WAQTD NAME AND DESIGNATION OF ALL THE EMPLPOYEES .

SELECT ENAME, JOB
FROM EMP;
-- +--------+-----------+
-- | ENAME  | JOB       |
-- +--------+-----------+
-- | SMITH  | CLERK     |
-- | ALLEN  | SALESMAN  |
-- | WARD   | SALESMAN  |
-- | JONES  | MANAGER   |
-- | MARTIN | SALESMAN  |
-- | BLAKE  | MANAGER   |
-- | CLARK  | MANAGER   |
-- | SCOTT  | ANALYST   |
-- | KING   | PRESIDENT |
-- | TURNER | SALESMAN  |
-- | ADAMS  | CLERK     |
-- | JAMES  | CLERK     |
-- | FORD   | ANALYST   |
-- | MILLER | CLERK     |
-- +--------+-----------+


-- Q8 WAQTD NAME, JOB AND SALARY GIVEN ALL THE EMPLOYEES.

SELECT ENAME, SAL * 12
FROM EMP;
-- +--------+------+-----------+
-- | ENAME  | SAL  | JOB       |
-- +--------+------+-----------+
-- | SMITH  |  800 | CLERK     |
-- | ALLEN  | 1600 | SALESMAN  |
-- | WARD   | 1250 | SALESMAN  |
-- | JONES  | 2975 | MANAGER   |
-- | MARTIN | 1250 | SALESMAN  |
-- | BLAKE  | 2850 | MANAGER   |
-- | CLARK  | 2450 | MANAGER   |
-- | SCOTT  | 3000 | ANALYST   |
-- | KING   | 5000 | PRESIDENT |
-- | TURNER | 1500 | SALESMAN  |
-- | ADAMS  | 1100 | CLERK     |
-- | JAMES  |  950 | CLERK     |
-- | FORD   | 3000 | ANALYST   |
-- | MILLER | 1300 | CLERK     |
-- +--------+------+-----------+


-- Q9 WAQTD DNAMES PRESENT IN DEPARTMENT TABLE.


SELECT DNAME
FROM DEPT;
-- +------------+
-- | DNAME      |
-- +------------+
-- | ACCOUNTING |
-- | RESEARCH   |
-- | SALES      |
-- | OPERATIONS |
-- +------------+

-- Q10 WAQTD DNAME AND LOCATION PRESENT IN DEPT TABLE.

SELECT DNAME, LOC
FROM DEPT;
-- +------------+----------+
-- | DNAME      | LOC      |
-- +------------+----------+
-- | ACCOUNTING | NEW YORK |
-- | RESEARCH   | DALLAS   |
-- | SALES      | CHICAGO  |
-- | OPERATIONS | BOSTON   |
-- +------------+----------+