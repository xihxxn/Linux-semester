-- Create table
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    age INT
);

-- Insert data
INSERT INTO users (name, age)
VALUES ('yejin', 22),
       ('xihxxn', 23);

-- Select data
SELECT * FROM users;
