-- A query to find all properties where the averaging rating is greater than 4.0 

SELECT 
    *
FROM 
    Property
WHERE id 
IN(
    SELECT Property_id
    FROM Review
    GROUP By Property_id
    HAVING AVG(rating) > 4.0
);

-- A correlaed subquery to find all users who have made more than 3 bookings
SELECT 
    *
FROM 
    User u 
WHERE (
    SELECT COUNT(*)
    FROM Booking b 
    WHERE b.User_id=u.id
) > 3;