CREATE OR REPLACE FUNCTION NthHighestSalary(N INT) RETURNS TABLE (Salary INT) AS $$
BEGIN

  IF N < 1 THEN
    RETURN;
  END IF;

  RETURN QUERY (
    -- Write your PostgreSQL query statement below.
        select distinct e.salary from Employee as e
        order by e.salary desc
        limit 1 offset n-1
      
  );
END;
$$ LANGUAGE plpgsql;