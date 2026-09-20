-- =====================================================
-- 17_Outer_join(3)
-- Repository Formatted Version
-- Directly executable in MySQL
-- =====================================================

# LEFT OUTER JOIN

-- EX: WAQTD names and dnames of all the employees even though
-- the employees Don’t work in any dept .

SELECT E.ENAME, D.DNAME
FROM EMP E LEFT OUTER JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
;
-- +--------+------------+
-- | ENAME  | DNAME      |
-- +--------+------------+
-- | SMITH  | RESEARCH   |
-- | ALLEN  | SALES      |
-- | WARD   | SALES      |
-- | JONES  | RESEARCH   |
-- | MARTIN | SALES      |
-- | BLAKE  | SALES      |
-- | CLARK  | ACCOUNTING |
-- | SCOTT  | RESEARCH   |
-- | KING   | ACCOUNTING |
-- | TURNER | SALES      |
-- | ADAMS  | RESEARCH   |
-- | JAMES  | SALES      |
-- | FORD   | RESEARCH   |
-- | MILLER | ACCOUNTING |
-- +--------+------------+

-- RIGHT OUTER JOIN

-- EX: WAQTD names and dnames of all the employees even though
-- the there are no employees in a dept .

SELECT E.ENAME, D.DNAME
FROM EMP E RIGHT OUTER JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
;
-- +--------+------------+
-- | ENAME  | DNAME      |
-- +--------+------------+
-- | MILLER | ACCOUNTING |
-- | KING   | ACCOUNTING |
-- | CLARK  | ACCOUNTING |
-- | FORD   | RESEARCH   |
-- | ADAMS  | RESEARCH   |
-- | SCOTT  | RESEARCH   |
-- | JONES  | RESEARCH   |
-- | SMITH  | RESEARCH   |
-- | JAMES  | SALES      |
-- | TURNER | SALES      |
-- | BLAKE  | SALES      |
-- | MARTIN | SALES      |
-- | WARD   | SALES      |
-- | ALLEN  | SALES      |
-- | NULL   | OPERATIONS |
-- +--------+------------+

# FULL OUTER JOIN

-- EX: WAQTD names and dnames of all the employees and depts
-- even though the employees Don’t work in any dept and a dept
-- having no employees

SELECT E.ENAME, D.DNAME
FROM EMP E
LEFT JOIN DEPT D ON E.DEPTNO = D.DEPTNO

UNION

SELECT E.ENAME, D.DNAME
FROM EMP E
RIGHT JOIN DEPT D ON E.DEPTNO = D.DEPTNO;
-- +--------+------------+
-- | ENAME  | DNAME      |
-- +--------+------------+
-- | SMITH  | RESEARCH   |
-- | ALLEN  | SALES      |
-- | WARD   | SALES      |
-- | JONES  | RESEARCH   |
-- | MARTIN | SALES      |
-- | BLAKE  | SALES      |
-- | CLARK  | ACCOUNTING |
-- | SCOTT  | RESEARCH   |
-- | KING   | ACCOUNTING |
-- | TURNER | SALES      |
-- | ADAMS  | RESEARCH   |
-- | JAMES  | SALES      |
-- | FORD   | RESEARCH   |
-- | MILLER | ACCOUNTING |
-- | NULL   | OPERATIONS |
-- +--------+------------+
