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

