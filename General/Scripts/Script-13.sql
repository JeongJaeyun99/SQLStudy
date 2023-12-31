CREATE TABLE normal.totalstudent (
	학생번호 varchar(100) NULL,
	학생이름 varchar(100) NULL,
	주소 varchar(100) NULL,
	학과 varchar(100) NULL,
	학과사무실 varchar(100) NULL,
	강좌이름 varchar(100) NULL,
	강의실 varchar(100) NULL,
	성적 varchar(100) NULL
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;

insert into totalstudent 
values ('501','박지성','멘체스타','컴퓨터과','공학관101','데이터베이스','공학관 110','3.5');

desc totalstudent ;

select * from totalstudent t ;

insert into totalstudent 
values ('601','손흥민','토트넘','컴퓨터과',null,null,null,null);

insert into totalstudent 
values ('701','조규성','토트넘2','체육학과',null,null,null,null);

update totalstudent 
set 주소 = '서울' 
where 학생이름 = '박지성' and 강좌이름 = '자료구조'; -- 수정대상(박지성의 주소가 서로 다르다.)

select * from totalstudent t ; 

delete from totalstudent
where 학생이름 = '김연아';

select * from totalstudent t 
where 학생번호 = '501'

CREATE TABLE 학생 (
	학생번호 varchar(100) NULL,
	학생이름 varchar(100) NULL,
	주소 varchar(100) NULL,
	학과 varchar(100) NULL
)

CREATE TABLE 강좌정보 (
	강좌이름 varchar(100) NULL,
	강의실 varchar(100) null
)

CREATE TABLE 학과정보 (
	학과 varchar(100) NULL,
	학과사무실 varchar(100) NULL
)

CREATE TABLE 성적정보 (
	학생번호 varchar(100) NULL,
	강좌이름 varchar(100) NULL,
	성적 varchar(100) NULL
)


insert into totalstudent 
values ('401','김연아','서울','체육학과','체육관101','데이터베이스','공학관110','4.0');

select count(*) from 학생; 

insert into 학생
values ('601','손흥민','토트넘','체육학과')

update 학생 
set 주소 = '서울'
where 학생이름 = '박지성'

delete from 성적정보
where 학생번호 = '401';

select * from 성적정보;

-- ---------검색---------
show tables;

select * from 학생;
select * from 학과정보;
select count(학과) from 학과정보;

select *
from 학생,학과정보
where 학생.학과 = 학과정보.학과;

select s.학생번호 , s.학생이름 ,s.학과 ,d.학과사무실 
from 학생 s inner join 학과정보 d
where s.학과 = d.학과;

select s.학생번호 ,s.학생이름 ,d.강좌이름 ,d.성적 
from 학생 s,성적정보 d
where s.학생번호  = d.학생번호;

select s.학생번호,s.강좌이름 ,d.강의실, s.성적 
from 성적정보 s,강좌정보 d
where s.강좌이름  = d.강좌이름 and d.강좌이름 = '자료구조';

select s.학생번호,s.강좌이름 ,d.강의실, s.성적 
from 성적정보 s,강좌정보 d
where s.강좌이름  = d.강좌이름 
and 학생번호 = '501'; -- 두개의 table에서 검색하였을때 칼럼이 한쪽에만 있는경우
-- 개발자가 설정한 간단한 이름을 생략해도 됨.

select s.학생번호 ,j.강좌이름 ,j.성적 ,c.강의실 
from 학생 s
inner join 성적정보 j on s.학생번호 =j.학생번호 
inner join 강좌정보 c on j.강좌이름  = c.강좌이름 ;

select *
from 학생 s
left join 성적정보 j
on s.학생번호 = j.학생번호;

select * from 학생 j
where j.학생번호 = (
	select s.학생번호 
	from 성적정보 s
 	where s.학생번호 = '502'
);



select j.학생번호 ,j.학생이름,j.학과  from 학생 j
where j.학생번호 in (
	select s.학생번호 
	from 성적정보 s
	where s.강좌이름 = '자료구조'
);
select p.강좌이름 ,p.학생번호 ,p.성적 
from 성적정보 p
where p.강좌이름 in (
	select g.강좌이름 
	from 강좌정보 g
	where g.강의실 = '공학관110'
);

use normal3;

