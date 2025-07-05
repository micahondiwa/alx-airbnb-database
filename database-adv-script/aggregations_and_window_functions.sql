-- A query to find all properties where the average rating is greater than 4.0
SELECT User_id
COUNT(*) AS total_bookings
FROM Booking
GROUP BY User_id;
