SELECT 
FROM Property
WHERE id IN(
    SELECT Property_id
    FROM Review
    GROUP By Property_id
    HAVING AVG(rating) > 4.0
);