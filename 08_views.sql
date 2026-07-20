-- View customer order details
create view customer_orders as select c.customer_id,c.first_name,c.last_name,o.order_id,o.order_date,o.total_amount from customers c join orders o on c.customer_id=o.customer_id;

-- View total quantity sold and sales revenue by product
create view product_sales as select product_name,sum(oi.quantity) as total_count,sum(oi.quantity*oi.unit_price) as total_sales from products p join order_items oi on p.product_id=oi.product_id group by product_name;

-- View total sales by store
create view store_sales as select store_name,sum(o.total_amount) as total_sales from stores s join orders o on s.store_id=o.store_id group by store_name;

-- View total sales by month
create view monthly_sales as select date_trunc('month',order_date::timestamp) as month,sum(total_amount) as total_sales from orders o group by month order by month;
