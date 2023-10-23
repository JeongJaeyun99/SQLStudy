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