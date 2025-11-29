-- Create database
CREATE DATABASE testdb;

-- Connect to database
\c testdb

-- Create table
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT,
    age INT
);

-- Insert data
INSERT INTO users (name, age) VALUES ('xihxxn', 21);
INSERT INTO users (name, age) VALUES ('jiwoo', 24);
INSERT INTO users (name, age) VALUES ('minsu', 30);

-- Select all
SELECT * FROM users;

-- List tables
\dt
