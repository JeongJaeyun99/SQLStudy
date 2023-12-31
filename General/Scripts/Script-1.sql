use lol;

insert into member values ('JUGKING','1234','challenger',60.0,1736,327),('BRO Hena','1235','challenger',56.0,1681,545),('Hide on bush','0000','challenger',55.0,996,411);

insert into record values ('JUGKING','2023-10-12','VI','8/1/7',79.0),('JUGKING','2023-10-2','Nidalee','10/3/14',75.0),('JUGKING','2023-10-12','VI','8/1/7',79.0),('BRO Hena','2023-10-10','Sivir','8/2/7',56.0),('Hide on bush','2023-10-11','Sylas','4/0/2',38.0);

select id from member where tier = 'challenger';

select id from member where winrate >= 60;

update record set killrate = 60.0 where id = 'Hide on bush';

delete from record where days = '2023-10-2';

use shop2;

insert into hobby values ('100','run','seoul'),('200','book','busan');
select * from hobby;
select content from hobby;
select location,content from hobby;

create table movie(
	id varchar(100),
	title varchar(100),
	content varchar(100),
	actor varchar(100)
);
create table place(
	id varchar(100),
	name varchar(100),
	addr varchar(100),
	tel varchar(100)
);

insert into movie values('m1','블랙아담','액션','드웨인 존슨'),('m2','리멤버','드라마','남주혁'),('m3','자백','스릴러','소지섭');
insert into place values('p1','cgv','강남구 삼성동','02-555'),('p2','megabox','강남구 역삼동','02-666'),('p3','lotte','강남구 대치동','02-777');

select * from movie;
select * from movie where id = 'm1';
update movie set content = '스릴러' where id = 'm1';
delete from movie where id = 'm1';

select * from place;
select * from place where name = 'cgv';
update place set tel = '02-888' where name = 'lotte';
delete from place where id = 'p3';

truncate table movie;
truncate table place;

drop table movie;
drop table place;

