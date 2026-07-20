-- Link products to categories
alter table products add constraint fk_product_category foreign key (category_id) references categories(category_id);

-- Link employees to stores
alter table employees add constraint fk_employee_store foreign key (store_id) references stores(store_id);

-- Link orders to customers
alter table orders add constraint fk_orders_customers foreign key (customer_id) references customers(customer_id);

-- Link orders to employees
alter table orders add constraint fk_orders_employee foreign key (emp_id) references employees(emp_id);

-- Link orders to stores
alter table orders add constraint fk_orders_store foreign key(store_id) references stores(store_id);

-- Link order items to orders
alter table order_items add constraint fk_orderitems_order foreign key(order_id) references orders(order_id);

-- Link order items to products
alter table order_items add constraint fk_orderitems_product foreign key(product_id) references products(product_id);