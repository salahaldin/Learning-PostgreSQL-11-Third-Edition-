\pset null null
WITH data (v) as (VALUES (true), (false),(null)) 
    SELECT DISTINCT 
        first.v::TEXT as a, 
        second.v::TEXT as b, 
        (first.v AND second.v)::TEXT AS "a and b", 
        (first.v OR second.v)::TEXT as "a or b" 
    FROM 
        data as first cross join 
        data as second 
    ORDER BY a DESC nulls last, b DESC nulls last;

WITH data (v) as (VALUES (true), (false),(null)) 
    SELECT 
        v::TEXT as a, 
        (NOT v)::TEXT as "NOT a" 
    FROM 
        data
    ORDER BY a DESC nulls last;
