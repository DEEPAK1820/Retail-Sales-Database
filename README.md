# Retail Sales Analytics SQL

A PostgreSQL project demonstrating relational database design, data
generation, SQL querying, sales reporting, and reusable views.

## Project Overview

The database models a retail sales system with customers, product
categories, products, stores, employees, orders, and order items. SQL
queries are used to explore the data and answer common retail business
questions.

## Database Structure

-   **customers** --- Customer details and contact information
-   **categories** --- Product categories
-   **products** --- Product details, pricing, stock, and brands
-   **stores** --- Retail store locations
-   **employees** --- Employee information and store assignments
-   **orders** --- Customer order transactions
-   **order_items** --- Individual products and quantities within each
    order

Foreign keys establish relationships between the tables.

## Dataset

The project uses SQL-generated sample data, including:

-   10 product categories
-   20 stores
-   1,000 customers
-   500 products
-   10,000 orders
-   30,000 order items

## SQL Concepts Demonstrated

-   Database and table creation
-   Primary and foreign keys
-   Constraints
-   Data insertion and generation
-   SELECT, WHERE, and ORDER BY
-   Aggregate functions
-   GROUP BY and HAVING
-   Joins and multi-table joins
-   Subqueries
-   Common Table Expressions (CTEs)
-   Window functions
-   Sales reports
-   Views

## Sales Analysis

The project includes reports such as total sales by store, sales by
product category, top customers, best-selling products, employee
performance, average order value, monthly sales, store order counts,
revenue by brand, and inventory remaining.

## Views

Reusable views were created for customer orders, product sales, store
sales, and monthly sales.

## Project Files

``` text
Retail-Sales-Analytics-SQL/
├── 01_create_database.sql
├── 02_create_tables.sql
├── 03_relationships.sql
├── 04_insert_data.sql
├── 05_basic_queries.sql
├── 06_advanced_queries.sql
├── 07_sales_reports.sql
└── 08_views.sql
```

## Technologies Used

-   PostgreSQL
-   DBeaver
-   SQL
-   Git
-   GitHub

## How to Run

1.  Run `01_create_database.sql` to create the PostgreSQL database.
2.  Connect to the newly created database.
3.  Run `02_create_tables.sql` to create the tables.
4.  Run `03_relationships.sql` to add foreign key relationships.
5.  Run `04_insert_data.sql` to populate the database.
6.  Run the remaining SQL files to explore queries, reports, and views.

## Purpose

This project was built to strengthen practical SQL and relational
database skills for data engineering and analytics. It demonstrates an
end-to-end workflow from database design and data generation to querying
and business-focused sales analysis.
