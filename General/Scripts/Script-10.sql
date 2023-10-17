select count(*)
from emp; -- 1번

select count(*)
from emp
where deptno = 20 and mgr <= 7700;

select min(sal)
from emp e 
where deptno = 10 or deptno = 20;

select min(sal),max(sal), sum(sal)
from emp;

select deptno,avg(sal)
from emp 
group by deptno;

select deptno,sum(sal)
from emp 
group by deptno
order by deptno;

select deptno,avg(sal)
from emp 
group by deptno
having avg(sal) >= 2000
order by deptno desc;

select count(*) as '직원수',avg(sal)
from emp e
where job = 'MANAGER';

select count(*) as '직원수'
from emp e 
where ename like '%s%';

select count(*)
from emp e 
where sal >= 3000 and comm != 0
order by sal desc;