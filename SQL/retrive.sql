-- Question 1
SELECT ename, sal, comm
FROM Emp5
WHERE comm > 0
ORDER BY sal DESC, comm DESC;

-- Question 2
SELECT DISTINCT job
FROM Emp5;

-- Question 3
SELECT empno AS "Emp #",
       ename AS "Employee",
       job AS "Job",
       hiredate AS "Hire Date"
FROM Emp5;

-- Question 4
SELECT ename || ', ' || job AS "Employee and Title"
FROM Emp5;

-- Question 5
SELECT ename || ',' || job || ',' || hiredate || ',' || mgr AS "The_Output"
FROM Emp5;

-- Question 6
SELECT ename, job, hiredate
FROM Emp5
WHERE ename IN ('SCOTT', 'TURNER')
ORDER BY hiredate;

-- Question 7
SELECT ename, deptno
FROM Emp5
WHERE deptno IN (20, 30)
ORDER BY ename;

-- Question 8
SELECT ename AS "Employee",
       sal AS "Monthly Salary"
FROM Emp5
WHERE sal BETWEEN 2000 AND 3000
  AND deptno IN (20, 30);

-- Question 9
SELECT ename, hiredate
FROM Emp5
WHERE EXTRACT(YEAR FROM hiredate) = 1981;

-- Question 10
SELECT ename, sal
FROM Emp5
WHERE sal > &amount;

-- Question 11
SELECT ename, job
FROM Emp5
WHERE mgr IS NULL;

-- Question 12
SELECT empno, ename, sal, deptno
FROM Emp5
WHERE mgr = &mgr
ORDER BY &column_name;

-- Question 13
SELECT empno, ename, sal, deptno
FROM Emp5
WHERE mgr = &mgr
ORDER BY &column_name;

-- Question 14
SELECT ename
FROM Emp5
WHERE ename LIKE '__A%';

-- Question 15
SELECT ename
FROM Emp5
WHERE ename LIKE '%A%'
  AND ename LIKE '%S%';

-- Question 16
SELECT ename, job, sal
FROM Emp5
WHERE job = 'CLERK'
  AND sal IN (800, 950, 1300);