CREATE TABLE users (
    user_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR (255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
)


-- This SQL statement creates a table named users with four columns: user_id, name, email, and password. Here's a breakdown of each column:

-- user_id: INTEGER type, PRIMARY KEY, and AUTO_INCREMENT, which means it will automatically generate a unique value for each new row.
-- name: VARCHAR(255) type, NOT NULL, which means it cannot be empty.
-- email: VARCHAR(255) type, NOT NULL and UNIQUE, which means each email must be unique across all rows.
-- password: VARCHAR(255) type, NOT NULL, which means it cannot be empty.
-- The AUTO_INCREMENT attribute is used for the primary key user_id to automatically 
-- generate a unique value for each new row, starting from 1 and incrementing by 1 for each new row.

CREATE TABLE orders(
    order_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    cid INTEGER NOT NULL,
    order_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT orders_fk FOREIGN KEY (cid) REFERENCES customers(cid)
);
-- order_id: INTEGER type, PRIMARY KEY, and AUTO_INCREMENT, which means it will automatically generate a unique value for each new row.
-- cid: INTEGER type, NOT NULL, which means it cannot be empty.
-- order_date: DATETIME type, NOT NULL, with a DEFAULT value of CURRENT_TIMESTAMP, 
-- which means it will automatically set the current date and time when a new row is inserted.
-- CONSTRAINT orders_fk FOREIGN KEY (cid) REFERENCES customers(cid): 
--This line defines a foreign key constraint (orders_fk) on the cid column, referencing the cid column in the customers table. 
--This ensures that the cid values in the orders table must exist in the customers table.
-- This structure ensures that each order has a unique ID (order_id), is associated with a customer (cid), and includes an order date (order_date). 
--The foreign key constraint ensures referential integrity between the orders and customers tables.