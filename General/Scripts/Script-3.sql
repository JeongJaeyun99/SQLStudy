use univ;

create table STUDENT(
	ID VARCHAR(100),
	NAME VARCHAR(100),
	TEL VARCHAR(100),
	DEPTID INT,
	PROFESSORID VARCHAR(100)
);

create table PROFESSOR(
	ID VARCHAR(100),
	NAME VARCHAR(100),
	TEL VARCHAR(100),
	DEPTID INT,
	ADDR VARCHAR(100),
	ROOMNO VARCHAR(100)
);

create table DEPT(
	DEPTNO INT,
	DNAME VARCHAR(100),
	LOC VARCHAR(100)
);

create table EMP(
	EMPNO INT,
	ENAME VARCHAR(100),
	JOB VARCHAR(100),
	DEPTID INT,
	MGR INT,
	HIREDATE DATETIME,
	SAL INT,
	COMM INT,
	DEPTNO INT
);

use shop3;

create table depart2(
	id varchar(100) primary key,
	name varchar(100),
	instructor varchar(100)
);

create table student2(
	id varchar(100),
	name varchar(100),
	tel varchar(100),
	depart_id varchar(100) 
);
ALTER TABLE shop3.student2 
ADD CONSTRAINT student2_FK 
FOREIGN KEY (id) 
REFERENCES shop3.depart2(id);

use shop;

insert into member values ('melon','1234','melon','010');

select * from member;

select id from member;

select tel,id from member;

select tel, name from member where id = 'apple'; 

insert into member values ('computer','1234','com',null);

select * from member;

insert into member values('ice2','1234','ice2','010',now());

delete from bbs;

select * from bbs;

insert into bbs values (null,'db','fun db','apple');
insert into bbs values (null,'db2','fun db2','apple2');
insert into bbs values (null,'db3','fun db3','apple3');

