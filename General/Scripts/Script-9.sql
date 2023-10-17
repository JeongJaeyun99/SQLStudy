use company;

select length(ename) 
from emp; -- 1번

select length(ename) 
from emp 
where job = 'MANAGER'; -- 2번

select ename,job 
from emp 
where comm is null; -- 3번

select hiredate 
from emp 
where comm is not null; -- 4번

select substr(ename,2) 
from emp; -- 5번

select substr(job,1,3) 
from emp; -- 6번

select replace(ename,'K','P') 
from EMP; -- 7번

select concat(empno,'번은 ',ename,'입니다.') as '글자합치기'  
from emp; -- 9번

select concat(month(hiredate),'월 ',dayname(hiredate),'요일') as '월 과 요일'
from emp; -- 10번

select
	case job
		when 'MANAGER' then 'LEVEL1'
		when 'SALESMAN' then 'LEVEL2'
		else 'LEVEL3'
	end as LEVEL_RESULT
	from EMP;
	
select job, count(sal),sum(sal),round(avg(sal)),min(sal),max(sal)
from emp e 
group by job;

