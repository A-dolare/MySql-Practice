
# CONCATINATION OPERATOR

-- Q1 WAQTD Names of the Employees
SELECT CONCAT('MR ', ENAME)
FROM EMP;
+---------------------+
| CONCAT('MR', ENAME) |
+---------------------+
| MR SMITH            |
| MR ALLEN            |
| MR WARD              |
| MR JONES             |
| MR MARTIN            |
| MR BLAKE             |
| MR CLARK             |
| MR SCOTT             |
| MR KING              |
| MR TURNER            |
| MR ADAMS             |
| MR JAMES             |
| MR FORD              |
| MR MILLER            |
+---------------------+

-- Q2 WAQTD Name and Hiredate of the Employees

SELECT CONCAT('MR ', ENAME), CONCAT('HIRED ON ', HIREDATE)
FROM EMP;
+----------------------+-------------------------------+
| CONCAT('MR ', ENAME) | CONCAT('HIRED ON ', HIREDATE) |
+----------------------+-------------------------------+
| MR SMITH             | HIRED ON 1980-12-17           |
| MR ALLEN             | HIRED ON 1981-02-20           |
| MR WARD              | HIRED ON 1981-02-22           |
| MR JONES             | HIRED ON 1981-04-02           |
| MR MARTIN            | HIRED ON 1981-09-28           |
| MR BLAKE             | HIRED ON 1981-05-01           |
| MR CLARK             | HIRED ON 1981-06-09           |
| MR SCOTT             | HIRED ON 1982-12-09           |
| MR KING              | HIRED ON 1981-11-17           |
| MR TURNER            | HIRED ON 1980-09-08           |
| MR ADAMS             | HIRED ON 1983-01-12           |
| MR JAMES             | HIRED ON 1981-12-03           |
| MR FORD              | HIRED ON 1981-12-03           |
| MR MILLER            | HIRED ON 1982-01-23           |
+----------------------+-------------------------------+

-- Q3 WAQTD Name and Hiredate of employees hired before '1988-07-31'?
SELECT CONCAT('MR ', ENAME, ' WAS HIRED BEFORE ', '1988-07-31')
FROM EMP
WHERE HIREDATE < '1988-07-31';
+----------------------------------------------------------+
| CONCAT('MR ', ENAME, ' WAS HIRED BEFORE ', '1988-07-31') |
+----------------------------------------------------------+
| MR SMITH WAS HIRED BEFORE 1988-07-31                     |
| MR ALLEN WAS HIRED BEFORE 1988-07-31                     |
| MR WARD WAS HIRED BEFORE 1988-07-31                      |
| MR JONES WAS HIRED BEFORE 1988-07-31                     |
| MR MARTIN WAS HIRED BEFORE 1988-07-31                    |
| MR BLAKE WAS HIRED BEFORE 1988-07-31                     |
| MR CLARK WAS HIRED BEFORE 1988-07-31                     |
| MR SCOTT WAS HIRED BEFORE 1988-07-31                     |
| MR KING WAS HIRED BEFORE 1988-07-31                      |
| MR TURNER WAS HIRED BEFORE 1988-07-31                    |
| MR ADAMS WAS HIRED BEFORE 1988-07-31                     |
| MR JAMES WAS HIRED BEFORE 1988-07-31                     |
| MR FORD WAS HIRED BEFORE 1988-07-31                      |
| MR MILLER WAS HIRED BEFORE 1988-07-31                    |
+----------------------------------------------------------+

