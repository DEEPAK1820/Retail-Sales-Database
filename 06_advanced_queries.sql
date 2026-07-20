select first_name,state from customers where state='California' union select first_name,state from customers where state='Arizona';

select * from customers where customer_id in (select customer_id from orders where total_amount > ( select avg(total_amount) from orders ));

select* from orders where total_amount > (select avg(total_amount)from orders);

with store_sales as ( select store_id,sum(total_amount) as total_sales from orders group by store_id) select* from Store_sales where total_sales>1000; 

with expensive_prod as (select * from products where price>500) select * from expensive_prod;

select order_id,total_amount,sum(total_amount) over (order by order_id) as running_total from orders;