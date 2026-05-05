
-- Creating Database 
CREATE DATABASE sandwich_maker;
use sandwich_maker;

-- Creating required 3 tables 
CREATE TABLE resources (
    Item varchar(50),
    amount int
);

CREATE TABLE sandwiches (
    sandwich_size varchar(50),
    price decimal(5,2)
);

CREATE TABLE recipes (
    sandwich_size varchar(50),
    Item varchar(50),
    amount int
);


-- Inserting data into tables 
INSERT INTO resources (Item, amount) VALUES
('bread', 12),
('ham', 18),
('cheese', 24);

INSERT INTO sandwiches (sandwich_size, price) VALUES
('small', 1.75),
('medium', 3.25),
('large', 5.50);
 
INSERT INTO recipes (sandwich_size, Item, amount) VALUES
('small', 'bread', 2),
('small', 'ham', 4),
('small', 'cheese', 4),
('medium', 'bread', 4),
('medium', 'ham', 6),
('medium', 'cheese', 8),
('large', 'bread', 6),
('large', 'ham', 8),
('large', 'cheese', 12);

SELECT * FROM resources;
SELECT * FROM sandwiches;
SELECT * FROM recipes;
