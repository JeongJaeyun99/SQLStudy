select * from bbs b;

select id ,title,content
from bbs b;

select id, title,content
from bbs
order by id desc 
limit 5

select id, title,content
from bbs
where id between 100 and 110;

(select row_number() over(order by id desc) as bbs_no,
id,title,content
from bbs b) b2

select * from 
	(select row_number() over(order by id desc) as bbs_no,
	id,title,content
	from bbs b) b2
where b2.bbs_no between 1 and 10