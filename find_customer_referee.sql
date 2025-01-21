-- Table Schema:
-- Customer(
--     id INT PRIMARY KEY,
--     name VARCHAR(255),
--     referee_id INT
-- )

-- Problem Statement:
-- Find the names of the customer that are not referred by the customer with id = 2.
-- Return the result table in any order.

-- Example 1:

-- Input: 
-- Customer table:
-- +----+------+------------+
-- | id | name | referee_id |
-- +----+------+------------+
-- | 1  | Will | null       |
-- | 2  | Jane | null       |
-- | 3  | Alex | 2          |
-- | 4  | Bill | null       |
-- | 5  | Zack | 1          |
-- | 6  | Mark | 2          |
-- +----+------+------------+
-- Output: 
-- +------+
-- | name |
-- +------+
-- | Will |
-- | Jane |
-- | Bill |
-- | Zack |
-- +------+

-- Intuition
-- The problem requires us to find customers whose referee is not the customer with id = 2. 
-- The first thought is to use a SELECT query with a WHERE clause to exclude customers referred by id 2, 
-- which means we need to check if the referee_id is either NULL or not equal to 2.

-- Approach
-- We will use a SELECT statement to retrieve the 'name' from the 'Customer' table.
-- The WHERE clause will filter for customers where 'referee_id' is NULL or 'referee_id' is not 2.
-- This approach directly addresses the problem statement by excluding customers referred by id 2.

-- Complexity
-- Time complexity: O(n)
-- O(n), where n is the number of rows in the Customer table. We need to scan each row to check the condition.

-- Space complexity: O(1)
-- O(1), as we are only selecting one column ('name') and not using any additional data structures that grow with input size. The result set storage is considered constant relative to the input size.

-- Solution:

SELECT name
FROM Customer
WHERE referee_id IS NULL OR referee_id != 2;

-- Example Output:
-- +------+
-- | name |
-- +------+
-- | Will |
-- | Jane |
-- | Bill |
-- | Zack |
-- +------+