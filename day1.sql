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

