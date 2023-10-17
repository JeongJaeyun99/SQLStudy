use company;

CREATE TABLE SALGRADE
(
  GRADE  int primary key,
  LOSAL  int,
  HISAL  int
);

desc salgrade ;

CREATE TABLE DEPT
(
  DEPTNO  int primary key,
  DNAME   VARCHAR(100),
  LOC     VARCHAR(100)
);

desc dept ;

CREATE TABLE EMP
(
  EMPNO     int primary key,
  ENAME     VARCHAR(100),
  JOB       VARCHAR(100),
  MGR       int,
  HIREDATE  DATE,
  SAL       decimal(7,2),
  COMM      decimal(7,2),
  DEPTNO    int 
);

desc emp ;

select empno from emp;

select distinct deptno from emp;

select ename,(sal*12) as '연봉' from emp;

select * from emp order by sal;

select * from emp 
where job = 'MANAGER' 
order by sal desc;

select * from emp e 
where DEPTNO = 30;

select * from emp e 
where not DEPTNO = 30;

select * from emp e 
where DEPTNO = 30 and JOB = 'SALESMAN';

select * from emp e 
where SAL >= 3000;

select * from emp e 
where SAL != 3000;

select * from emp e 
where SAL >= 3000;

select distinct JOB from emp e ;

select * from emp e 
where JOB in ('CLERK','SALESMAN','MANAGER');

select * from emp e 
where sal between 2000 and 3000;

select * from emp e 
where ename like '_L%';

select * from emp e 
where ename like '%AM%';

select * from emp e 
where COMM is null;