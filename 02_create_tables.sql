-- RETAIL SALES DATABASE - TABLE CREATION

-- Create customers table
create table customers(customer_id serial primary key,first_name varchar(50) not null,last_name varchar(50) not null,email varchar(100) unique,phone varchar(20),city varchar(50),state varchar(50),created_at timestamp default current_timestamp);

-- Create categories table
create table categories(category_id serial primary key,category_name varchar(50) not null);

-- Create products table
create table products(product_id serial primary key,product_name varchar(50) not null,category_id int,price decimal(10,2),stock_quantity int,brand varchar(50));

-- Create stores table
create table stores(store_id serial primary key,store_name varchar(50) not null,city varchar(50),state varchar(50),phone varchar(20));

-- Create employees table
create table employees(emp_id serial primary key,emp_fname varchar(50) not null,emp_lname varchar(50),emp_email varchar(50) unique,phone varchar(20),job_title varchar(50),hire_date date,salary decimal(10,2),store_id int);

-- Create orders table
create table orders(order_id serial primary key,customer_id int,emp_id int,store_id int,order_date date,total_amount decimal(10,2),order_status varchar(20));

-- Create order items table
create table order_items(orderitem_id serial primary key,order_id int,product_id int,quantity int,unit_price decimal(10,2));

