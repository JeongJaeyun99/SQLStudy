-- 주석 

-- shop, shop2, sys 

-- db > table > 항목(field, item, property  attribute)

-- shop을 선택후, SQL버튼을 클릭한 경우, shop이 선택된 것.

-- create table a ==> shop db에 만들어짐.

-- 다른 db를 사용하고 싶은 경우 

-- use shop2

-- create table b ==> shop2 db에 만들어짐.

create user 'summer'@'localhost' identified by '1234';

grant all privileges on *.* to 'summer'@'localhost';
-- *(database).*(table)
create user 'apple'@'localhost' identified by '1234';

grant all privileges on *.* to 'apple'@'localhost';

use shop3;

create table member3(
	id varchar(100),
	pw varchar(100),
	name varchar(100),
	tel varchar(100)
);
show tables;

-- shop3.member3 definition

CREATE TABLE `member4` (
  `id` varchar(100) DEFAULT NULL,
  `pw` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `tel` varchar(100) DEFAULT null,
  addr varchar(200)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- shop3.bbs3 definition

CREATE TABLE `bbs3` (
  `no` int DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `writer` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

create table reply3(
	id int(100),
	oriid int(100),
	content varchar(100),
	writer varchar(100)
);