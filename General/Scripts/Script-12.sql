use shop4;

select * 
from `member` m ,bbs b
where m.id = b.writer;

select * 
from `member` m left outer join bbs b
on (m.id = b.writer);

select * 
from `member` m right outer join bbs b
on (m.id = b.writer);

-- union 집합

use shop;

select * from member;

select * from member where id = 'apple'and pw = '1234';
select count(id) from member where id = 'apple'and pw = '1234';
