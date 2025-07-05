-- A query to find the total number of bookings made by each user, using COUNT function and GROUP BY clause
SELECT User_id
    COUNT(*) AS total_bookings
FROM 
    Booking
GROUP BY 
    User_id;

-- Using a window function (ROW_NUMBER, RANK) to rank properties based on the total number of bookings they have received.
SELECT 
    Property_id AS property_id,
    Property.name AS property_name,
    COUNT(Booking_id) AS total_bookings,
    ROW_NUMBER() OVER (ORDER BY COUNT(Booking_id) DESC) AS row_number_rank
    RANK() OVER (ORDER BY COUNT(Booking_id) DESC) AS booking_rank
FROM 
    Property
LEFT JOIN
    Booking on property_id=Booking.property_id
GROUP BY 
    property_id, property_name
ORDER BY 
    booking_rank;
