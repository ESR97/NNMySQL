CREATE table dept(
deptno mediumint unsigned not null default 0,
dname varchar(20) not null default "",
loc varchar(13) not null default ""
);

INSERT into dept values(10, 'ACCOUNTING', 'NEW YORK'),
						(20, 'RESEARCH', 'DALLAS'),
						(30, 'SALES', 'CHICAGO'),
						(40, 'OPERATIONS', 'BOSTON');
						
CREATE TABLE emp(
empno mediumint unsigned not null default 0, /*编号*/
ename varchar(20) not null default "", /*名字*/
job varchar(9) not null default "", /*工作*/
mgr mediumint unsigned, /*上级编号*/
hiredate date not null, /*入职时间*/
sal decimal(7,2) not null, /*薪水*/
comm decimal(7,2), /*红利*/
deptno mediumint unsigned not null default 0 /*部门编号*/
);

INSERT into emp values(7369,'SMITH','CLERK',7902,'1990-12-17',800.00,NULL,20),
(7499,'ALLEN','SALESMAN',7698,'1991-2-20',1600.00,300.00,30),
(7521,'WARD','SALESMAN',7698,'1991-2-22',1250.00,500.00,30),
(7566,'JONES','MANAGER',7839,'1991-4-2',2975.00,NULL,20),
(7654,'MARTIN','SALESMEN',7698,'1991-9-28',1250.00,1400.00,30),
(7698,'BLAKE','MANAGER',7839,'1991-5-1',2850.00,NULL,30),
(7782,'CLARK','MANAGER',7839,'1991-6-9',2450.00,NULL,10),
(7788,'SOCTT','ANALYST',7566,'1997-4-19',3000.00,NULL,20),
(7839,'KING','PRESIDENT',NULL,'1991-11-17',5000.00,NULL,30),
(7844,'TURNER','SALESMAN',7698,'1991-9-8',1500.00,NULL,30),
(7900,'JAMES','CLERK',7698,'1991-12-3',950.00,NULL,30),
(7902,'FORD','ANALYST',7566,'1991-12-3',3000.00,NULL,20),
(7934,'MILLER','CLERK',7782,'1992-1-23',1300.00,NULL,10);

SELECT * FROM EMP;

CREATE table salgrade
(
grade mediumint unsigned not null default 0, /*工资级别*/
losal decimal(17,2) not null,	/*该级别下最低工资*/
hisal decimal(17,2) not null	/*该级别下最高工资*/
);

INSERT into salgrade values (1,700,1200),(2,1201,1400),(3,1401,2000),
(4,2001,3000),(5,3001,9999);

-- having子句用于限制分组显示结果
-- 如何显示每个部门的平均工资和最高工资
SELECT AVG(sal), MAX(sal), deptno
	from emp group by deptno;

/* 显示每个部门的每种岗位的平均工资和最低工资
-- 分析：1.显示每个部门的平均工资和最低工资
		2.显示每个部门的每种岗位的平均工资和最低工资
*/
SELECT AVG(sal), MIN(sal), deptno, job 
	from emp group by deptno, job;

/* 显示平均工资低于2000的部门号和它的平均工资 //别名
 * 分析：1.显示各个部门的平均工资和部门号
 * 		2.在1的基础上，进行过滤，保留AVG(sal)<2000
 * */
SELECT AVG(sal), deptno 
	from emp group by deptno
		HAVING AVG(sal)<2000;
	
SELECT AVG(sal) as avg_sal, deptno 
	from emp group by deptno
		HAVING avg_sal<2000;


























