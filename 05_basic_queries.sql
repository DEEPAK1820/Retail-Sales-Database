select * from customers;

UPDATE customers SET city = 'Los Angeles',state = 'California' WHERE customer_id = 1;

UPDATE customers SET city = 'San Francisco',state = 'California' WHERE customer_id = 2;

UPDATE customers SET city = 'San Diego',state = 'California' WHERE customer_id = 3;

UPDATE customers SET city = 'Tucson',state = 'Arizona' WHERE customer_id = 4;

UPDATE customers SET city = 'Phoenix',state = 'Arizona' WHERE customer_id = 5;

select * from customers where city = 'Los Angeles';

select * from products order by price desc;

select store_id,sum(total_amount) as total_sales from orders group by store_id;

select store_id,SUM(total_amount) as total_sales from orders group by store_id having SUM(total_amount) < 1000;

select c.first_name,o.order_id,o.total_amount from customers c join orders o on c.customer_id= o.customer_id;

SELECT DISTINCT city FROM customers;
