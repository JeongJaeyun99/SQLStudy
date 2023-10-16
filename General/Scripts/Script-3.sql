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