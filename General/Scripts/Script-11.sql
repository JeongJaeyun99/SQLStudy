-- join

select *
from dept d,emp e
where d.DEPTNO = e.DEPTNO ;

select d.DEPTNO ,d.DNAME ,e.ENAME ,e.JOB 
from dept d,emp e
where d.DEPTNO = e.DEPTNO ;

select d.DEPTNO ,d.DNAME ,e.ENAME ,e.JOB 
from dept d left outer join emp e 
on (d.DEPTNO  = e.DEPTNO);

select d.DEPTNO ,d.DNAME ,e.ENAME ,e.JOB 
from dept d right outer join emp e 
on (d.DEPTNO  = e.DEPTNO);

select e.EMPNO ,e.ENAME ,e2.ENAME  ,e2.SAL  
from emp e,emp e2 
where e.MGR = e2.EMPNO;

