-- Table Schema:
-- Products(
--     product_id INT PRIMARY KEY,
--     low_fats ENUM('Y', 'N'),
--     recyclable ENUM('Y', 'N')
-- )

-- Problem Statement:
-- Write a solution to find the ids of products that are both low fat and recyclable.
-- Return the result table in any order.

-- Example 1:

-- Input: 
-- Products table:
-- +-------------+----------+------------+
-- | product_id  | low_fats | recyclable |
-- +-------------+----------+------------+
-- | 0           | Y        | N          |
-- | 1           | Y        | Y          |
-- | 2           | N        | Y          |
-- | 3           | Y        | Y          |
-- | 4           | N        | N          |
-- +-------------+----------+------------+
-- Output: 
-- +-------------+
-- | product_id  |
-- +-------------+
-- | 1           |
-- | 3           |
-- +-------------+
-- Explanation: Only products 1 and 3 are both low fat and recyclable.

-- Intuition
-- The problem asks to identify products that are both low fat and recyclable.
-- The first thought is to use a simple SELECT query with a WHERE clause to filter
-- products based on the 'low_fats' and 'recyclable' fields.

-- Approach
-- We will use a SELECT statement to retrieve the 'product_id' from the 'Products' table.
-- The WHERE clause will filter for products where 'low_fats' is 'Y' and 'recyclable' is 'Y'.
-- This approach is straightforward as it directly applies the given conditions without any need for complex joins or subqueries.

-- Complexity
-- Time complexity: O(n)
-- O(n), where n is the number of rows in the Products table. We need to examine each row to determine if it matches our criteria.

-- Space complexity: O(1)
-- O(1), because we're just selecting one column ('product_id') without creating any additional data structures that depend on input size. The space used for the result set is generally considered negligible or constant in SQL queries.

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