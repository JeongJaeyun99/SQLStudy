select *
from product3 p 
order by price desc; -- 1번

select name,content,price
from product3 p 
order by company; -- 2번

select name,price
from product3 p 
where id = '100'; -- 3번

select name,company
from product3 p 
where price = 5000; -- 4번

select name,img
from product3 p 
where id = '100' and price = 1000; -- 5번

select company,name
from product3 p 
where company = 'c100'; -- 6번

select name,price
from product3 p 
where company = 'c100' or company = 'c200'; -- 7번

update product3 set content = '품절' 
where price = 5000; -- 8번

select * from product3 p;

update product3 set img = '0.png', price = 10000
where id = '100' or id = '102'; -- 9번

update product3 set company = 'apple', name = 'appleshoes'
where id = '101'; -- 10번

delete from product3 
where name = 'shoes1' or id = '107'; -- 11번

delete from product3 where company = 'c100'; -- 12번

delete from product3; -- 13번

drop table product3; -- 14번