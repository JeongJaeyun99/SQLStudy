use shop2; 

select * from product3 p 
order by price desc; -- 2번

select name as '제품이름',content as '제품내용',price as '제품가격' 
from product3 p 
order by company; -- 3번

select distinct company 
from product3 p ; -- 4번

select price*5 as 'price5'
from product3 p; -- 5번

select name,company
from product3 p
where price = 5000; -- 6번

select name,price,company
from product3 p
where price between 3000 and 6000; -- 7번

select name,price
from product3 p 
where not company = 'c100'; -- 8번

select name,price
from product3 p 
where company = 'c100' or company = 'c200'; -- 9번

select * 
from product3 p 
where name like '%4'; -- 10번

select *
from product3 p 
where content like '%food%'; -- 11번

update product3 set content = '품절'
where price = 5000; -- 12번

select * from product3 p ;

update product3 set img = 'o.png', price = 10000
where id = '100' or id = '102';

delete from product3
where company = 'c100';

delete from product3;