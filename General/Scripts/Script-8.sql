use company;
-- 주요 함수(문자함수)
-- select의 결과는 항상 테이블(항목명+값)
select CONCAT(empno, ename) as 붙인글자
from emp ;
select LENGTH(ename) as 사람이름글자수 
from emp;
select REPLACE(ename, 'E', 'AAA')
FROM EMP;
select now();
select now(), 
year(now()) as 년, 
month(now()) as 월,
HOUR (now()) as 시, 
MINUTE(now()) as 분;
select * from emp;

select sal + comm from emp;
update emp set comm = 0 where comm is null; -- 숫자일때는 0으로 바꿈

select * from emp;

select sal,comm,sal + comm from emp;

select concat(ename,job)from emp;

update emp set ename = null where empno = 7499 or empno = 7369;

update emp 
set ename = '' 
where ename is null;

