-- Recyclable and Low Fat Products SQL Query
-- Author: Your Name
-- Date: 2025-01-20

-- Table Schema:
-- Products(
--     product_id INT PRIMARY KEY,
--     low_fats ENUM('Y', 'N'),
--     recyclable ENUM('Y', 'N')
-- )

-- Problem Statement:
-- Write a solution to find the ids of products that are both low fat and recyclable.
-- Return the result table in any order.

-- Solution:

SELECT 
    product_id
FROM 
    Products
WHERE 
    low_fats = 'Y' 
    AND recyclable = 'Y';

-- Example Output:
-- +-------------+
-- | product_id  |
-- +-------------+
-- | 1           |
-- | 3           |
-- +-------------+