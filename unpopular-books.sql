select distinct b.book_id, b.name
from books b
left join orders o on o.book_id = b.book_id and o.dispatch_date >= '2018-06-23'
where b.book_id not in (select book_id from books where available_from > '2019-05-23')
group by b.book_id
having sum(o.quantity) is null or sum(o.quantity) < 10