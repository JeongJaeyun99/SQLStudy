delete from reply 

delete from bbs

INSERT INTO bbs (title,content,writer) VALUES
	 ('수요일','수요일 오후 ','apple'),
	 ('db5','fun db','apple'),
	 ('rice','콩콩콩','apple'),
	 ('ㅅㄷㄴㅅ','test2','apple'),
	 ('test','test111','apple'),
	 ('겨울이다.','야! 겨울이다.','apple'),
	 ('아직은 가을','선선한 가을','apple'),
	 ('지금은','4시 22분!','apple');
	
select * from bbs -- 번호확인 

INSERT INTO reply (oriid,content,writer) VALUES
	 (18,'good!','apple'),
	 (18,'좋아!','apple'),
	 (19,'좀 추워!','apple'),
	 (19,'오늘은 수요일!','apple'),
	 (25,'내일은 수능일!','apple'),
	 (25,'오늘은 수요일!','apple'),
	 (25,'내일은 수능일!','apple');
	 
select * from reply
where id = 18

select * from mymap

insert into mymap (location, lat, lon)
values ('서울', 37.5665, 126.9780),
       ('부산', 35.1796, 129.0756),
       ('대구', 35.8714, 128.6014),
       ('인천', 37.4563, 126.7052),
       ('광주', 35.1605, 126.8514),
       ('대전', 36.3504, 127.3845),
       ('울산', 35.5384, 129.3114),
       ('경기', 37.2751, 127.0092),
       ('강원', 37.8854, 127.7298),
       ('충북', 36.6358, 127.4914),
       ('충남', 36.6588, 126.6728),
       ('전북', 35.7167, 127.1447),
       ('전남', 34.8194, 126.8931),
       ('경북', 36.4919, 128.8889),
       ('경남', 35.4606, 128.2132),
       ('제주', 33.3796, 126.5282); 
       
      delete from smoke
      
CREATE TABLE `bbs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `writer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
); 
