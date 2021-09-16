--CAu 1
--SELECT  ename "Ten nhan vien", sal*12 "Thu nhap" FROM SCOTT.EMP
--SELECT * FROM SCOTT.EMP
--SELECT * FROM SCOTT.BONUS
--Cau 2
--SELECT ename || ' HAS HELP THE POSITION OF ' || job || ' IN DEPT '|| deptno || ' SINCE ' || hiredate FROM SCOTT.EMP
--SELECT * FROM SCOTT.EMP
--Cau 3
DESC SCOTT.EMP
--Cau 4
SELECT ename,deptno,sal  FROM SCOTT.EMP WHERE sal>=1000 AND sal<=2000
--Cau 5
SELECT * FROM SCOTT.EMP
--Cau 6
--SELECT * FROM SCOTT.EMP
  SELECT empno,ename FROM SCOTT.EMP WHERE ename LIKE '%TH%' OR ename LIKE '%LL%'
--Cau 7
SELECT ename,deptno,hiredate FROM SCOTT.EMP WHERE TO_CHAR(hiredate,'YYYY') = '1981'
--Cau 8
SELECT MIN(sal) "Luong thap nhat", MAX(sal) "Luong cao nhat", ROUND(AVG(sal)) "Luong trung binh" FROM SCOTT.EMP
-- Cau 9
SELECT job,min(sal) FROM SCOTT.EMP GROUP BY job
--Cau 10
SELECT 'Co ' || COUNT(ename) || ' quan ly trong danh sach nhan vien' FROM SCOTT.EMP WHERE job='MANAGER'
--Cau 11
SELECT deptno, COUNT(ename) num FROM SCOTT.EMP GROUP BY deptno HAVING count(ename)>=3 
-- Cau 12
SELECT a.ename,b.loc,a.deptno FROM SCOTT.EMP a INNER JOIN SCOTT.DEPT b ON a.deptno = b.deptno  WHERE sal>=1500
--Cau 13
SELECT ename,sal,job,deptno FROM SCOTT.EMP WHERE ename  NOT IN 'CLERK' ORDER BY sal ASC
--Cau 14
SELECT ename, sal, job, deptno FROM SCOTT.EMP WHERE (sal*13>=36000) OR job = 'CLERK'
--Cau 15
SELECT deptno FROM SCOTT.DEPT WHERE deptno NOT IN (SELECT deptno FROM SCOTT.EMP) 
--Cau 16
--SELECT job FROM SCOTT.EMP GROUP BY JOB
SELECT ename,job,sal FROM SCOTT.EMP WHERE sal IN (SELECT max(sal) a FROM SCOTT.EMP GROUP BY job)
-- Cau 17
SELECT MAX(sal),deptno FROM SCOTT.EMP GROUP BY deptno ORDER BY deptno ASC
--Cau 18
SELECT ename, deptno, hiredate FROM SCOTT.EMP WHERE hiredate IN (SELECT MIN(hiredate) FROM SCOTT.EMP GROUP BY deptno) ORDER BY deptno DESC
-- Cau 19
SELECT ename, sal,deptno  FROM SCOTT.EMP a WHERE sal>(SELECT avg(sal) FROM SCOTT.EMP GROUP BY deptno HAVING a.deptno = deptno)
