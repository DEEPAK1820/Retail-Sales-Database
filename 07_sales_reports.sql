-- SALES REPORT 1: Total Sales by Store
select store_name,sum(total_amount) as total_sales from stores s join orders o on s.store_id = o.store_id group by store_name order by total_sales desc;

--Report 2: Sales by Product Category
select category_name,sum(oi.quantity*oi.unit_price) as total_sales from categories c join products p on c.category_id= p.category_id join order_items oi on p.product_id=oi.product_id group by category_name order by total_sales desc;

--Report 3: Top 5 Customers
select first_name,last_name,sum(total_amount) as total_sales from customers c join orders o on c.customer_id=o.customer_id group by first_name,last_name order by total_sales desc limit 5;

--Report 4: Top 5 Products
select product_name,sum(oi.quantity) as total_quantity from products p join order_items oi on p.product_id =oi.product_id group by product_name order by total_quantity desc limit 5;

--Report 5: Employee Performance
select emp_fname,emp_lname,count(o.order_id) as total_orders,sum(total_amount) as total_sales from employees e join orders o on e.emp_id=o.emp_id group by e.emp_id,e.emp_fname,e.emp_lname order by total_sales desc;

--Report 6: Average Order Value
select round(avg(total_amount),2) as average_orders from orders;

--Report 7: Monthly Sales
select date_trunc('month',order_date::timestamp) as month,sum(total_amount) as total_sales from orders group by month order by month;

--Report 8: Store Order Count
select store_name,count(o.order_id) as order_count from stores s join orders o on s.store_id=o.store_id group by store_name order by order_count desc;

--Report 9: Inventory Remaining
select product_name,stock_quantity from products

--Report 10: Revenue by Brand
select brand,sum(oi.quantity*oi.unit_price) as revenue from products p join order_items oi on p.product_id =oi.product_id group by brand order by revenue desc;