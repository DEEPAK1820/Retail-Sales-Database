-- Insert product categories
INSERT INTO categories (category_name) VALUES('Electronics'),('Clothing'),('Furniture'),('Sports'),('Groceries'),('Home & Kitchen'),('Beauty'),('Books'),('Toys'),('Automotive');

-- Generate 20 stores across different U.S. cities
INSERT INTO stores
(store_name, city, state, phone)
SELECT
    'Store ' || n,
    city,
    state,
    '555' || LPAD(n::text,7,'0')
FROM
(
VALUES
('Los Angeles','California'),
('San Diego','California'),
('San Francisco','California'),
('Phoenix','Arizona'),
('Dallas','Texas'),
('Houston','Texas'),
('Austin','Texas'),
('Chicago','Illinois'),
('Seattle','Washington'),
('Portland','Oregon'),
('Denver','Colorado'),
('Las Vegas','Nevada'),
('Miami','Florida'),
('Atlanta','Georgia'),
('Boston','Massachusetts'),
('New York','New York'),
('Orlando','Florida'),
('Sacramento','California'),
('San Jose','California'),
('Nashville','Tennessee')
) AS cities(city,state)
CROSS JOIN generate_series(1,1) n;

-- Generate 1,000 customers
INSERT INTO customers
(first_name,last_name,email,phone,city,state)
SELECT
'Customer'||n,
'Lastname'||n,
'customer'||n||'@gmail.com',
'555'||LPAD(n::text,7,'0'),
CASE
WHEN n%10=0 THEN 'Los Angeles'
WHEN n%10=1 THEN 'Phoenix'
WHEN n%10=2 THEN 'Dallas'
WHEN n%10=3 THEN 'Chicago'
WHEN n%10=4 THEN 'Seattle'
WHEN n%10=5 THEN 'Miami'
WHEN n%10=6 THEN 'Denver'
WHEN n%10=7 THEN 'Boston'
WHEN n%10=8 THEN 'Atlanta'
ELSE 'New York'
END,
CASE
WHEN n%10=0 THEN 'California'
WHEN n%10=1 THEN 'Arizona'
WHEN n%10=2 THEN 'Texas'
WHEN n%10=3 THEN 'Illinois'
WHEN n%10=4 THEN 'Washington'
WHEN n%10=5 THEN 'Florida'
WHEN n%10=6 THEN 'Colorado'
WHEN n%10=7 THEN 'Massachusetts'
WHEN n%10=8 THEN 'Georgia'
ELSE 'New York'
END
FROM generate_series(1,1000) n;

-- Generate 500 products with random prices and stock quantities
INSERT INTO products
(product_name, category_id, price, stock_quantity, brand)
SELECT
'Product ' || n,
((n-1)%10)+1,
ROUND((random()*900+100)::numeric,2),
(random()*500)::int,
CASE
WHEN n%5=0 THEN 'Apple'
WHEN n%5=1 THEN 'Samsung'
WHEN n%5=2 THEN 'Sony'
WHEN n%5=3 THEN 'Nike'
ELSE 'Dell'
END
FROM generate_series(1,500) n;

-- Generate 10,000 orders with randomized customer, employee, store, date, and amount
INSERT INTO orders
(customer_id, emp_id, store_id, order_date, total_amount)
SELECT
(random()*999+1)::int,
(random()*99+1)::int,
(random()*19+1)::int,
DATE '2025-01-01'+((random()*364)::int),
ROUND((random()*900+100)::numeric,2)
FROM generate_series(1,10000);

-- Generate 30,000 order items
INSERT INTO order_items
(order_id, product_id, quantity, unit_price)
SELECT
(random()*9999+1)::int,
(random()*499+1)::int,
(random()*4+1)::int,
ROUND((random()*900+100)::numeric,2)
FROM generate_series(1,30000);
